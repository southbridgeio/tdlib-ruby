# tdlib-ruby

[![Maintainability](https://api.codeclimate.com/v1/badges/9362ca2682b7edbae205/maintainability)](https://codeclimate.com/github/centosadmin/tdlib-ruby/maintainability) [![Build Status](https://travis-ci.org/centosadmin/tdlib-ruby.svg?branch=master)](https://travis-ci.org/centosadmin/tdlib-ruby)

## Description

Ruby bindings and client for TDLib (Telegram database library).

## Requirements

* Ruby 2.3+
* Compiled [tdlib](https://github.com/tdlib/td)

We have precompiled versions for CentOS 6 & 7 in our repositories:

http://rpms.southbridge.ru/rhel7/stable/x86_64/

http://rpms.southbridge.ru/rhel6/stable/x86_64/

And also SRPMS:

http://rpms.southbridge.ru/rhel7/stable/SRPMS/

http://rpms.southbridge.ru/rhel6/stable/SRPMS/

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

  client.on(TD::Types::Update::AuthorizationState) do |update|
    state = case update.authorization_state
            when TD::Types::AuthorizationState::WaitPhoneNumber
              :wait_phone_number
            when TD::Types::AuthorizationState::WaitCode
              :wait_code
            when TD::Types::AuthorizationState::WaitPassword
              :wait_password
            when TD::Types::AuthorizationState::Ready
              :ready
            else
              nil
            end
  end

  loop do
    case state
    when :wait_phone_number
      puts 'Please, enter your phone number:'
      phone = STDIN.gets.strip
      params = {
        '@type' => 'setAuthenticationPhoneNumber',
        'phone_number' => phone
      }
      client.broadcast_and_receive(params)
    when :wait_code
      puts 'Please, enter code from SMS:'
      code = STDIN.gets.strip
      params = {
        '@type' => 'checkAuthenticationCode',
        'code' => code
      }
      client.broadcast_and_receive(params)
    when :wait_password
      puts 'Please, enter 2FA password:'
      password = STDIN.gets.strip
      params = {
        '@type' => 'checkAuthenticationPassword',
        'password' => password
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

## TD::Client#broadcast

From version 1.0 TD::Client#broadcast returns [Concurrent::Promise](http://ruby-concurrency.github.io/concurrent-ruby/Concurrent/Promise.html) object.

```ruby
  me = client.broadcast('@type' => 'getMe').then { |result| puts result }.rescue { |error| puts error }.value
```

## Configuration

```ruby
TD.configure do |config|
  config.lib_path = 'path/to/dir_containing_libtdjson' # libtdson will be searched in this directory (*.so, *.dylib, *.dll are valid extensions). For Rails projects, if not set, will be considered as project_root_path/vendor. If not set and file doesn't exist in vendor, it will try to find lib by ldconfig (only on Linux).
  config.encryption_key = 'your_encryption_key' # it's not required

  config.client.api_id = 12345
  config.client.api_hash = 'your_api_hash'
  config.client.use_test_dc = true # default: false
  config.client.database_directory = 'path/to/db/dir' # default: "#{Dir.home}/.tdlib-ruby/db"
  config.client.files_directory = 'path/to/files/dir' # default: "#{Dir.home}/.tdlib-ruby/files"
  config.client.use_file_database = true # default: true
  config.client.use_chat_info_database = true # default: true
  config.client.use_secret_chats = true # default: true
  config.client.use_message_database = true # default: true
  config.client.system_language_code = 'ru' # default: 'en'
  config.client.device_model = 'Some device model' # default: 'Ruby TD client'
  config.client.system_version = '42' # default: 'Unknown'
  config.client.application_version = '1.0' # default: '1.0'
  config.client.enable_storage_optimizer = true # default: true
  config.client.ignore_file_names = true # default: false
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

Typeization made by [Yuri Mikhaylov](https://github.com/yurijmi) 
