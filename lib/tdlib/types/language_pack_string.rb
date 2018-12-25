module TD::Types
  # Represents one language pack string.
  #
  # @attr key [String] String key.
  # @attr value [TD::Types::LanguagePackStringValue] String value.
  class LanguagePackString < Base
    attribute :key, TD::Types::String
    attribute :value, TD::Types::LanguagePackStringValue
  end
end
