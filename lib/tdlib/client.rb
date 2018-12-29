require 'securerandom'

# Simple client for TDLib.
# @example
#   TD.configure do |config|
#     config.lib_path = 'path_to_tdlibjson'
#     config.encryption_key = 'your_encryption_key'
#
#     config.client.api_id = your_api_id
#     config.client.api_hash = 'your_api_hash'
#   end
#
#   client = TD::Client.new
#
#   begin
#     state = nil
#
#     client.on(TD::Types::Update::AuthorizationState) do |update|
#       state = case update.authorization_state
#               when TD::Types::AuthorizationState::WaitPhoneNumber
#                 :wait_phone_number
#               when TD::Types::AuthorizationState::WaitCode
#                 :wait_code
#               when TD::Types::AuthorizationState::WaitPassword
#                 :wait_password
#               when TD::Types::AuthorizationState::Ready
#                 :ready
#               else
#                 nil
#               end
#     end
#
#     loop do
#       case state
#       when :wait_phone_number
#         puts 'Please, enter your phone number:'
#         phone = STDIN.gets.strip
#         client.set_authentication_phone_number(phone).value
#       when :wait_code
#         puts 'Please, enter code from SMS:'
#         code = STDIN.gets.strip
#         client.check_authentication_code(code).value
#       when :wait_password
#         puts 'Please, enter 2FA password:'
#         password = STDIN.gets.strip
#         client.check_authentication_password(password).value
#       when :ready
#         @me = client.get_me.value
#         break
#       end
#     end
#
#   ensure
#     client.close
#   end
#
#   p @me
class TD::Client
  include Concurrent
  include TD::ClientMethods

  TIMEOUT = 20

  def self.ready(*args)
    new(*args).connect
  end

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

    configure
    @update_manager.run
  end

  # Sends asynchronous request to the TDLib client and returns Promise object
  # @see TD::ClientMethods List of available queries as methods
  # @see https://www.rubydoc.info/github/ruby-concurrency/concurrent-ruby/Concurrent/Promise
  #   Concurrent::Promise documentation
  # @example
  #   client.broadcast(some_query).then { |result| puts result }.rescue { |error| puts [error.code, error.message] }
  # @param [Hash] query
  # @return [Concurrent::Promise]
  def broadcast(query)
    return dead_client_promise if dead?

    Promise.execute do
      condition = ConditionVariable.new
      extra = SecureRandom.uuid
      result = nil
      mutex = Mutex.new

      @update_manager << TD::UpdateHandler.new(TD::Types::Base, extra, disposable: true) do |update|
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
        error = TD::Types::Error.new(code: 0, message: 'Unknown error. Please, see TDlib logs.') if result.nil?
        raise TD::ErrorProxy.new(error) if error
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

  def ready
    return dead_client_promise if dead?
    return Promise.fulfill(self) if ready?

    Promise.execute do
      @ready_condition_mutex.synchronize do
        next self if @ready || (@ready_condition.wait(@ready_condition_mutex, @timeout) && @ready)
        raise TD::ErrorProxy.new(timeout_error)
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
    @update_manager.stop
    @alive = false
    @ready = false
    TD::Api.client_destroy(@td_client)
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

  def configure
    on TD::Types::Update::AuthorizationState do |update|
      case update.authorization_state
      when TD::Types::AuthorizationState::WaitTdlibParameters
        set_tdlib_parameters(TD::Types::TdlibParameters.new(**@config))
      when TD::Types::AuthorizationState::WaitEncryptionKey
        check_database_encryption_key(TD.config.encryption_key).then do
          @ready_condition_mutex.synchronize do
            @ready = true
            @ready_condition.broadcast
          end
        end
      else
        # do nothing
      end
    end
  end

  def send_to_td_client(query)
    return unless alive?
    TD::Api.client_send(@td_client, query)
  end

  def timeout_error
    TD::Types::Error.new(code: 0, message: 'Unknown error')
  end

  def dead_client_promise
    Promise.reject(dead_client_error)
  end

  def dead_client_error
    TD::ErrorProxy.new(TD::Types::Error.new(code: 0, message: 'TD client is dead'))
  end
end
