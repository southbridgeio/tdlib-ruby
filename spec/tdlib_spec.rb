require 'spec_helper'
require 'tdlib-ruby'

describe TD do
  it "should have a VERSION constant" do
    expect(subject.const_get('VERSION')).to_not be_empty
  end
end

class Base
  def self.inherited(subclass)
    subclass.prepend(Module.new do
      define_method(:call) do |*args|
        begin
          super(*args)
        ensure
          p 'test1'
        end
      end
    end)
  end
end

class Test < Base
  def call(a)
    p a
  end
end

p Test.new.('aaa')



TD.configure do |config|
  config.lib_path = Dir.home

  config.client.api_id = 39991
  config.client.api_hash = '89b13f68e3840ac787eaa9ba8236d983'
end

#raise TD.config.lib_path

# TD::Api.set_log_verbosity_level(1)
TD::Api.set_log_file_path("#{Dir.home}/tdlib.log")

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
      a = client.broadcast_and_receive(params)
    when :ready
      client.on_ready do |client|
        @me = client.broadcast_and_receive('@type' => 'getMe')
        #@contacts = client.broadcast_and_receive('@type' => 'searchChatsOnServer', 'query' => 'BotFather', 'limit' => 25)
        @user = client.broadcast_and_receive('@type' => 'getUser', user_id: 132916567)
        @chat = client.broadcast_and_receive('@type' => 'createNewBasicGroupChat', 'title' => 'Test2', 'user_ids' => [132916567])
        @link = client.broadcast_and_receive('@type' => 'generateChatInviteLink', 'chat_id' => @chat['id'])
      end
      break
    end
  end

ensure
  client.close
end
p @me
p @chat
p @link
# p @chat
