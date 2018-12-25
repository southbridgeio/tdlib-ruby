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

  def initialize(td_client = TD::Api.client_create,
                 update_manager = TD::UpdateManager.new(td_client),
                 timeout: TIMEOUT,
                 **extra_config)
    @td_client = td_client
    @update_manager = update_manager
    @timeout = timeout
    @config = TD.config.client.to_h.merge(extra_config)
    @ready_condition_mutex = Mutex.new
    @ready_condition = ConditionVariable.new
    authorize
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
    Promise.execute do
      condition = ConditionVariable.new
      extra = TD::Utils.generate_extra(query)
      result = nil
      mutex = Mutex.new

      handler = ->(update, update_extra) do
        return unless update_extra == extra

        result = update
        @update_manager.remove_handler(handler)
        condition.signal
      end
      @update_manager.add_handler(handler)

      query['@extra'] = extra
      
      mutex.synchronize do
        TD::Api.client_send(@td_client, query)
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
    broadcast(query).value
  end

  alias broadcast_and_receive fetch

  # Synchronously executes TDLib request
  # Only a few requests can be executed synchronously
  # @param [Hash] query
  def execute(query)
    TD::Api.client_execute(@td_client, query)
  end

  # Binds passed block as a handler for updates with type of *update_type*
  # @param [String, Class] update_type
  # @yield [update] yields update to the block as soon as it's received
  def on(update_type, &_)
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

    handler = ->(update, _) do
      return unless update.is_a?(update_type)

      yield update
    end
    @update_manager.add_handler(handler)
  end

  def on_ready(&_)
    @ready_condition_mutex.synchronize do
      return(yield self) if @ready || (@ready_condition.wait(@ready_condition_mutex, @timeout) && @ready)
      raise TD::ErrorProxy.new(timeout_error)
    end
  end

  # Stops update manager and destroys TDLib client
  def close
    @update_manager.stop
    TD::Api.client_destroy(@td_client)
  end

  private

  def authorize
    handler = ->(update, _) do
      return unless update.is_a?(TD::Types::Update::AuthorizationState)

      case update.authorization_state
      when TD::Types::AuthorizationState::WaitTdlibParameters
        set_tdlib_parameters(TD::Types::TdlibParameters.new(**@config))
      when TD::Types::AuthorizationState::WaitEncryptionKey
        check_database_encryption_key(TD.config.encryption_key)
      else
        @update_manager.remove_handler(handler)
        
        @ready_condition_mutex.synchronize do
          @ready = true
          @ready_condition.broadcast
        end
      end
    end
    @update_manager.add_handler(handler)
  end

  def timeout_error
    TD::Types::Error.new(code: 0, message: 'Unknown error')
  end
end
