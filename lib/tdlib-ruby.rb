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
    setting :use_test_dc, false
    setting :database_directory, "#{Dir.home}/.tdlib-ruby/db"
    setting :files_directory, "#{Dir.home}/.tdlib-ruby/data"
    setting :use_file_database, true
    setting :use_chat_info_database, true
    setting :use_secret_chats, true
    setting :use_message_database, true
    setting :system_language_code, 'en'
    setting :device_model, 'Ruby TD client'
    setting :system_version, 'Unknown'
    setting :application_version, '1.0'
  end
end

require 'tdlib-schema'
require 'tdlib/errors'
require 'tdlib/api'
require 'tdlib/client'
require 'tdlib/update_handler'
require 'tdlib/update_manager'
