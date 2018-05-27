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
#     client.on('updateAuthorizationState') do |update|
#       next unless update.dig('authorization_state', '@type') == 'authorizationStateWaitPhoneNumber'
#       state = :wait_phone
#     end
#
#     client.on('updateAuthorizationState') do |update|
#       next unless update.dig('authorization_state', '@type') == 'authorizationStateWaitCode'
#       state = :wait_code
#     end
#
#     client.on('updateAuthorizationState') do |update|
#       next unless update.dig('authorization_state', '@type') == 'authorizationStateReady'
#       state = :ready
#     end
#
#     loop do
#       case state
#       when :wait_phone
#         p 'Please, enter your phone number:'
#         phone = STDIN.gets.strip
#         params = {
#           '@type' => 'setAuthenticationPhoneNumber',
#           'phone_number' => phone
#         }
#         client.broadcast_and_receive(params)
#       when :wait_code
#         p 'Please, enter code from SMS:'
#         code = STDIN.gets.strip
#         params = {
#           '@type' => 'checkAuthenticationCode',
#           'code' => code
#         }
#         client.broadcast_and_receive(params)
#       when :ready
#         @me = client.broadcast_and_receive('@type' => 'getMe')
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

  TIMEOUT = 20

  def initialize(td_client = TD::Api.client_create,
                 update_manager = TD::UpdateManager.new(td_client),
                 proxy: { '@type' => 'proxyEmpty' },
                 **extra_config)
    @td_client = td_client
    @update_manager = update_manager
    @config = TD.config.client.to_h.merge(extra_config)
    @proxy = proxy
    @ready_condition_mutex = Mutex.new
    @ready_condition = ConditionVariable.new
    authorize
    @update_manager.run
  end

  # Sends asynchronous request to the TDLib client and returns Promise object
  # @see https://www.rubydoc.info/github/ruby-concurrency/concurrent-ruby/Concurrent/Promise)
  # @example
  #   client.broadcast(some_query).then { |result| puts result }.rescue
  # @param [Hash] query
  # @param [Numeric] timeout
  # @return [Concurrent::Promise]
  def broadcast(query, timeout: TIMEOUT)
    Promise.execute do
      condition = ConditionVariable.new
      extra = TD::Utils.generate_extra(query)
      result = nil
      mutex = Mutex.new
      handler = ->(update) do
        return unless update['@extra'] == extra
        mutex.synchronize do
          result = update
          @update_manager.remove_handler(handler)
          condition.signal
        end
      end
      @update_manager.add_handler(handler)
      query['@extra'] = extra
      mutex.synchronize do
        TD::Api.client_send(@td_client, query)
        condition.wait(mutex, timeout)
        raise TD::TimeoutError if result.nil?
        result
      end
    end
  end

  # Sends asynchronous request to the TDLib client and returns received update synchronously
  # @param [Hash] query
  # @return [Hash]
  def fetch(query, timeout: TIMEOUT)
    broadcast(query, timeout: timeout).value
  end

  alias broadcast_and_receive fetch

  # Synchronously executes TDLib request
  # Only a few requests can be executed synchronously
  # @param [Hash] query
  def execute(query)
    TD::Api.client_execute(@td_client, query)
  end

  # Returns current authorization state (it's offline request)
  # @return [Hash]
  def authorization_state
    broadcast_and_receive('@type' => 'getAuthorizationState')
  end

  # Binds passed block as a handler for updates with type of *update_type*
  # @param [String] update_type
  # @yield [update] yields update to the block as soon as it's received
  def on(update_type, &_)
    handler = ->(update) do
      return unless update['@type'] == update_type
      yield update
    end
    @update_manager.add_handler(handler)
  end

  def on_ready(timeout: TIMEOUT, &_)
    @ready_condition_mutex.synchronize do
      return(yield self) if @ready || (@ready_condition.wait(@ready_condition_mutex, timeout) && @ready)
      raise TD::TimeoutError
    end
  end

  # Stops update manager and destroys TDLib client
  def close
    @update_manager.stop
    TD::Api.client_destroy(@td_client)
  end

  private

  def authorize
    tdlib_params_query = {
      '@type' => 'setTdlibParameters',
      parameters: { '@type' => 'tdlibParameters', **@config }
    }
    encryption_key_query = {
      '@type' => 'checkDatabaseEncryptionKey',
    }

    if TD.config.encryption_key
      encryption_key_query['encryption_key'] = TD.config.encryption_key
    end

    handler = ->(update) do
      return unless update['@type'] == 'updateAuthorizationState'
      case update.dig('authorization_state', '@type')
      when 'authorizationStateWaitTdlibParameters'
        broadcast(tdlib_params_query)
      when 'authorizationStateWaitEncryptionKey'
        broadcast(encryption_key_query)
      else
        broadcast('@type' => 'setProxy', 'proxy' => @proxy)
        @update_manager.remove_handler(handler)
        @ready_condition_mutex.synchronize do
          @ready = true
          @ready_condition.broadcast
        end
      end
    end
    @update_manager.add_handler(handler)
  end
end
