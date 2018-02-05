require 'tdlib-ruby'

TD.configure do |config|
  config.lib_path = 'path_to_tdlibjson'
  config.encryption_key = 'your_encryption_key'

  config.client.api_id = your_api_id
  config.client.api_hash = 'your_api_hash'
end

client = TD::Client.new

begin
  state = nil

  client.on('updateAuthorizationState') do |update|
    next unless update.dig('authorization_state', '@type') == 'authorizationStateWaitPhoneNumber'
    state = :wait_phone
  end

  client.on('updateAuthorizationState') do |update|
    next unless update.dig('authorization_state', '@type') == 'authorizationStateWaitCode'
    state = :wait_code
  end

  client.on('updateAuthorizationState') do |update|
    next unless update.dig('authorization_state', '@type') == 'authorizationStateReady'
    state = :ready
  end

  loop do
    case state
    when :wait_phone
      p 'Please, enter your phone number:'
      phone = STDIN.gets.strip
      params = {
        '@type' => 'setAuthenticationPhoneNumber',
        'phone_number' => phone
      }
      client.broadcast_and_receive(params)
    when :wait_code
      p 'Please, enter code from SMS:'
      code = STDIN.gets.strip
      params = {
        '@type' => 'checkAuthenticationCode',
        'code' => code
      }
      client.broadcast_and_receive(params)
    when :ready
      @me = client.broadcast_and_receive('@type' => 'getMe')
      break
    end
  end

ensure
  client.close
end

p @me
