module TD::Types
  # A language pack string which has different forms based on the number of some object it mentions.
  # See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info.
  #
  # @attr zero_value [String] Value for zero objects.
  # @attr one_value [String] Value for one object.
  # @attr two_value [String] Value for two objects.
  # @attr few_value [String] Value for few objects.
  # @attr many_value [String] Value for many objects.
  # @attr other_value [String] Default value.
  class LanguagePackStringValue::Pluralized < LanguagePackStringValue
    attribute :zero_value, TD::Types::String
    attribute :one_value, TD::Types::String
    attribute :two_value, TD::Types::String
    attribute :few_value, TD::Types::String
    attribute :many_value, TD::Types::String
    attribute :other_value, TD::Types::String
  end
end
