# tdlib-ruby

[![Build Status](https://secure.travis-ci.org//tdlib-ruby.svg?branch=master)](https://travis-ci.org//tdlib-ruby)

## Description

Ruby bindings and client for TDLib.

## Basic example

```ruby
require 'tdlib-ruby'

TD.configure do |config|
  config.lib_path = 'path_to_tdlibjson'

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
```

## Requirements

* Ruby 2.3+
* Compiled [tdlib](https://github.com/tdlib/td)

## Install

Add to your gemfile:

```ruby
gem 'tdlib-ruby'
```

or run *gem install tdlib-ruby*

## Configuration

```ruby
TD.configure do |config|
  config.lib_path = 'path/to/tdlibjson'
  config.encryption_key # it's not required

  config.client.api_id = 12345
  config.client.api_hash = 'your_api_hash'
  config.client.use_test_dc = true # default: false
  config.database_directory = 'path/to/db/dir' # default: "#{Dir.home}/.tdlib-ruby/db"
  config.files_directory = 'path/to/files/dir' # default: "#{Dir.home}/.tdlib-ruby/files"
  config.client.use_chat_info_database = true # default: true
  config.use_secret_chats = true # default: true
  config.use_message_database = true # default: true
  config.system_language_code = 'ru' # default: 'en'
  config.device_model = 'Some device model' # default: 'Ruby TD client'
  config.system_version = '42' # default: 'Unknown'
  config.application_version = '1.0' # default: '1.0'
  config.enable_storage_optimizer = true # default: true
  config.ignore_file_names = true # default: false
end
```

## Copyright

Copyright (c) 2018 Southbridge
