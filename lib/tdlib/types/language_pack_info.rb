module TD::Types
  # Contains information about a language pack.
  #
  # @attr id [String] Unique language pack identifier.
  # @attr base_language_pack_id [String, nil] Identifier of a base language pack; may be empty.
  #   If a string is missed in the language pack, then it should be fetched from base language pack.
  #   Unsupported in custom language packs.
  # @attr name [String] Language name.
  # @attr native_name [String] Name of the language in that language.
  # @attr plural_code [String] A language code to be used to apply plural forms.
  #   See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info.
  # @attr is_official [Boolean] True, if the language pack is official.
  # @attr is_rtl [Boolean] True, if the language pack strings are RTL.
  # @attr is_beta [Boolean] True, if the language pack is a beta language pack.
  # @attr is_installed [Boolean] True, if the language pack is installed by the current user.
  # @attr total_string_count [Integer] Total number of non-deleted strings from the language pack.
  # @attr translated_string_count [Integer] Total number of translated strings from the language pack.
  # @attr local_string_count [Integer] Total number of non-deleted strings from the language pack available locally.
  # @attr translation_url [String, nil] Link to language translation interface; empty for custom local language packs.
  class LanguagePackInfo < Base
    attribute :id, TD::Types::String
    attribute :base_language_pack_id, TD::Types::String.optional.default(nil)
    attribute :name, TD::Types::String
    attribute :native_name, TD::Types::String
    attribute :plural_code, TD::Types::String
    attribute :is_official, TD::Types::Bool
    attribute :is_rtl, TD::Types::Bool
    attribute :is_beta, TD::Types::Bool
    attribute :is_installed, TD::Types::Bool
    attribute :total_string_count, TD::Types::Integer
    attribute :translated_string_count, TD::Types::Integer
    attribute :local_string_count, TD::Types::Integer
    attribute :translation_url, TD::Types::String.optional.default(nil)
  end
end
