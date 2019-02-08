module TD::Types
  # Contains information about a language pack.
  #
  # @attr id [String] Unique language pack identifier.
  # @attr name [String] Language name.
  # @attr native_name [String] Name of the language in that language.
  # @attr local_string_count [Integer] Total number of non-deleted strings from the language pack available locally.
  class LanguagePackInfo < Base
    attribute :id, TD::Types::String
    attribute :name, TD::Types::String
    attribute :native_name, TD::Types::String
    attribute :local_string_count, TD::Types::Integer
  end
end
