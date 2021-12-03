require 'securerandom'

# Simple client for TDLib.
class TD::Client
  include Concurrent
  include TD::ClientMethods

  TIMEOUT = 20

  def self.ready(*args)
    new(*args).connect
  end

  # @param [FFI::Pointer] td_client
  # @param [TD::UpdateManager] update_manager
  # @param [Numeric] timeout
  # @param [Hash] extra_config optional configuration hash that will be merged into tdlib client configuration
  def initialize(td_client = TD::Api.client_create,
                 update_manager = TD::UpdateManager.new(td_client),
                 timeout: TIMEOUT,
                 **extra_config)
    @td_client = td_client
    @ready = false
    @alive = true
    @update_manager = update_manager
    @timeout = timeout
    @config = TD.config.client.to_h.merge(extra_config)
    @ready_condition_mutex = Mutex.new
    @ready_condition = ConditionVariable.new
  end

  # Adds initial authorization state handler and runs update manager
  # Returns future that will be fulfilled when client is ready
  # @return [Concurrent::Promises::Future]
  def connect
    on TD::Types::Update::AuthorizationState do |update|
      case update.authorization_state
      when TD::Types::AuthorizationState::WaitTdlibParameters
        set_tdlib_parameters(parameters: TD::Types::TdlibParameters.new(**@config))
      when TD::Types::AuthorizationState::WaitEncryptionKey
        check_database_encryption_key(encryption_key: TD.config.encryption_key).then do
          @ready_condition_mutex.synchronize do
            @ready = true
            @ready_condition.broadcast
          end
        end
      else
        # do nothing
      end
    end

    @update_manager.run(callback: method(:handle_update))
    ready
  end

  # Sends asynchronous request to the TDLib client and returns Promise object
  # @see TD::ClientMethods List of available queries as methods
  # @see https://github.com/ruby-concurrency/concurrent-ruby/blob/master/docs-source/promises.in.md
  #   Concurrent::Promise documentation
  # @example
  #   client.broadcast(some_query).then { |result| puts result }.rescue { |error| puts [error.code, error.message] }
  # @param [Hash] query
  # @return [Concurrent::Promises::Future]
  def broadcast(query)
    return dead_client_promise if dead?

    Promises.future do
      condition = ConditionVariable.new
      extra = SecureRandom.uuid
      result = nil
      mutex = Mutex.new

      @update_manager << TD::UpdateHandler.new(TD::Types::Base, extra, true) do |update|
        mutex.synchronize do
          result = update
          condition.signal
        end
      end

      query['@extra'] = extra

      mutex.synchronize do
        send_to_td_client(query)
        condition.wait(mutex, @timeout)
        error = nil
        error = result if result.is_a?(TD::Types::Error)
        error = timeout_error if result.nil?
        raise TD::Error.new(error) if error
        result
      end
    end
  end

  # Sends asynchronous request to the TDLib client and returns received update synchronously
  # @param [Hash] query
  # @return [Hash]
  def fetch(query)
    broadcast(query).value!
  end

  alias broadcast_and_receive fetch

  # Synchronously executes TDLib request
  # Only a few requests can be executed synchronously
  # @param [Hash] query
  def execute(query)
    return dead_client_error if dead?
    TD::Api.client_execute(@td_client, query)
  end

  # Binds passed block as a handler for updates with type of *update_type*
  # @param [String, Class] update_type
  # @yield [update] yields update to the block as soon as it's received
  def on(update_type, &action)
    if update_type.is_a?(String)
      if (type_const = TD::Types::LOOKUP_TABLE[update_type])
        update_type = TD::Types.const_get("TD::Types::#{type_const}")
      else
        raise ArgumentError.new("Can't find class for #{update_type}")
      end
    end

    unless update_type < TD::Types::Base
      raise ArgumentError.new("Wrong type specified (#{update_type}). Should be of kind TD::Types::Base")
    end

    @update_manager << TD::UpdateHandler.new(update_type, &action)
  end

  # returns future that will be fulfilled when client is ready
  # @return [Concurrent::Promises::Future]
  def ready
    return dead_client_promise if dead?
    return Promises.fulfilled_future(self) if ready?

    Promises.future do
      @ready_condition_mutex.synchronize do
        next self if @ready || (@ready_condition.wait(@ready_condition_mutex, @timeout) && @ready)
        raise TD::Error.new(timeout_error)
      end
    end
  end

  # @deprecated
  def on_ready(&action)
    ready.then(&action).value!
  end

  # Stops update manager and destroys TDLib client
  def dispose
    return if dead?
    close.then { get_authorization_state }
  end

  def alive?
    @alive
  end

  def dead?
    !alive?
  end

  def ready?
    @ready
  end

  private

  def handle_update(update)
    return unless update.is_a?(TD::Types::Update::AuthorizationState) && update.authorization_state.is_a?(TD::Types::AuthorizationState::Closed)
    @alive = false
    @ready = false
    sleep 0.001
    TD::Api.client_destroy(@td_client)
    throw(:client_closed)
  end

  def send_to_td_client(query)
    return unless alive?
    TD::Api.client_send(@td_client, query)
  end

  def timeout_error
    TD::Types::Error.new(code: 0, message: 'Timeout error')
  end

  def dead_client_promise
    Promises.rejected_future(dead_client_error)
  end

  def dead_client_error
    TD::Error.new(TD::Types::Error.new(code: 0, message: 'TD client is dead'))
  end
end
