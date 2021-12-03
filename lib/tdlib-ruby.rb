require 'tdlib/version'
require 'dry/configurable'
require 'concurrent-ruby'

module TD
  extend Dry::Configurable

  module_function

  def root_path
    __dir__
  end

  setting :lib_path

  setting :encryption_key

  setting :client do
    setting :api_id, &:to_i
    setting :api_hash
    setting :use_test_dc, default: false
    setting :database_directory, default: "#{Dir.home}/.tdlib-ruby/db"
    setting :files_directory, default: "#{Dir.home}/.tdlib-ruby/data"
    setting :use_file_database, default: true
    setting :use_chat_info_database, default: true
    setting :use_secret_chats, default: true
    setting :use_message_database, default: true
    setting :system_language_code, default: 'en'
    setting :device_model, default: 'Ruby TD client'
    setting :system_version, default: 'Unknown'
    setting :application_version, default: '1.0'
    setting :enable_storage_optimizer, default: true
    setting :ignore_file_names, default: false
  end
end

require 'tdlib-schema'
require 'tdlib/errors'
require 'tdlib/api'
require 'tdlib/client'
require 'tdlib/update_handler'
require 'tdlib/update_manager'
