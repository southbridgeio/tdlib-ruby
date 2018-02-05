# Simple client for TDLib.
# @example
#   require 'tdlib'
#
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
  def initialize(td_client = TD::Api.client_create,
                 update_manager = TD::UpdateManager.new(td_client))
    @td_client = td_client
    @update_manager = update_manager
    authorize
  end

  # Sends asynchronous request to the TDLib client
  # @param [Hash] query
  # @yield [update] yields update to the block as soon as it's received
  def broadcast(query)
    if block_given?
      extra = TD::Utils.generate_extra(query)
      handler = ->(update) do
        return unless update['@extra'] == extra
        yield update
        @update_manager.remove_handler(handler)
      end
      @update_manager.add_handler(handler)
      query['@extra'] = extra
    end
    TD::Api.client_send(@td_client, query)
  end

  # Sends asynchronous request to the TDLib client and returns received update synchronously
  # @param [Hash] query
  # @return [Hash]
  def broadcast_and_receive(query)
    result = nil
    extra = TD::Utils.generate_extra(query)
    handler = ->(update) { result = update if update['@extra'] == extra }
    @update_manager.add_handler(handler)
    query['@extra'] = extra
    TD::Api.client_send(@td_client, query)
    loop do
      if result
        @update_manager.remove_handler(handler)
        return result
      end
    end
  end

  # Synchronously executes TDLib request
  # Only a few requests can be executed synchronously
  # @param [Hash] query
  def execute(query)
    TD::Api.client_execute(@td_client, query)
  end

  # Returns current authorization state (it's offline request)
  # @return [Hash]
  def authorization_state
    broadcast_and_receive('getAuthorizationState')
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

  # Stops update manager and destroys TDLib client
  def close
    @update_manager.stop
    TD::Api.client_destroy(@td_client)
  end

  private

  def authorize
    tdlib_params_query = {
      '@type' => 'setTdlibParameters',
      parameters: { '@type' => 'tdlibParameters', **TD.config.client.to_h }
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
        @update_manager.remove_handler(handler)
      end
    end
    @update_manager.add_handler(handler)
  end
end
