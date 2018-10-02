module TD::Types
  # Contains parameters for TDLib initialization.
  #
  # @attr use_test_dc [Boolean] If set to true, the Telegram test environment will be used instead of the production
  #   environment.
  # @attr database_directory [String] The path to the directory for the persistent database; if empty, the current
  #   working directory will be used.
  # @attr files_directory [String] The path to the directory for storing files; if empty, database_directory will be
  #   used.
  # @attr use_file_database [Boolean] If set to true, information about downloaded and uploaded files will be saved
  #   between application restarts.
  # @attr use_chat_info_database [Boolean] If set to true, the library will maintain a cache of users, basic groups,
  #   supergroups, channels and secret chats.
  #   Implies use_file_database.
  # @attr use_message_database [Boolean] If set to true, the library will maintain a cache of chats and messages.
  #   Implies use_chat_info_database.
  # @attr use_secret_chats [Boolean] If set to true, support for secret chats will be enabled.
  # @attr api_id [Integer] Application identifier for Telegram API access, which can be obtained at
  #   https://my.telegram.org.
  # @attr api_hash [String] Application identifier hash for Telegram API access, which can be obtained at
  #   https://my.telegram.org.
  # @attr system_language_code [String] IETF language tag of the user's operating system language; must be non-empty.
  # @attr device_model [String] Model of the device the application is being run on; must be non-empty.
  # @attr system_version [String] Version of the operating system the application is being run on; must be non-empty.
  # @attr application_version [String] Application version; must be non-empty.
  # @attr enable_storage_optimizer [Boolean] If set to true, old files will automatically be deleted.
  # @attr ignore_file_names [Boolean] If set to true, original file names will be ignored.
  #   Otherwise, downloaded files will be saved under names as close as possible to the original name.
  class TdlibParameters < Base
    attribute :use_test_dc, TD::Types::Bool.optional.default(nil)
    attribute :database_directory, TD::Types::String.optional.default(nil)
    attribute :files_directory, TD::Types::String.optional.default(nil)
    attribute :use_file_database, TD::Types::Bool.optional.default(nil)
    attribute :use_chat_info_database, TD::Types::Bool.optional.default(nil)
    attribute :use_message_database, TD::Types::Bool.optional.default(nil)
    attribute :use_secret_chats, TD::Types::Bool.optional.default(nil)
    attribute :api_id, TD::Types::Integer.optional.default(nil)
    attribute :api_hash, TD::Types::String.optional.default(nil)
    attribute :system_language_code, TD::Types::String
    attribute :device_model, TD::Types::String
    attribute :system_version, TD::Types::String
    attribute :application_version, TD::Types::String
    attribute :enable_storage_optimizer, TD::Types::Bool.optional.default(nil)
    attribute :ignore_file_names, TD::Types::Bool.optional.default(nil)
  end
end
