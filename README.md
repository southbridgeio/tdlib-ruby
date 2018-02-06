# tdlib-ruby

[![Build Status](https://travis-ci.org/centosadmin/tdlib-ruby.svg?branch=master)](https://travis-ci.org/centosadmin/tdlib-ruby)

## Description

Ruby bindings and client for TDLib.

## Requirements

* Ruby 2.3+
* Compiled [tdlib](https://github.com/tdlib/td)

## Install

Add to your gemfile:

```ruby
gem 'tdlib-ruby'
```
and run *bundle install*.


Or just run *gem install tdlib-ruby*

## Basic example

```ruby
require 'tdlib-ruby'

TD.configure do |config|
  config.lib_path = 'path_to_dir_containing_tdlibjson'

  config.client.api_id = your_api_id
  config.client.api_hash = 'your_api_hash'
end

TD::Api.set_log_verbosity_level(1)

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

## Configuration

```ruby
TD.configure do |config|
  config.lib_path = 'path/to/dir_containing_libtdjson' # libtdson will be searched in this directory (*.so, *.dylib, *.dll are valid extensions)
  config.encryption_key = 'your_encryption_key' # it's not required

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

## Advanced

You can get rid of large tdlib log with

```ruby
TD::Api.set_log_verbosity_level(1)
```

You can also set log file path:

```ruby
TD::Api.set_log_file_path('path/to/log_file')
```

Additional options can be passed to client:

```ruby
TD::Client.new(database_directory: 'will override value from config',
               files_directory: 'will override value from config')
```

## License

[MIT](https://github.com/centosadmin/tdlib-ruby/blob/master/LICENSE.txt)

## Authors

The gem is designed by [Southbridge](https://southbridge.io)
