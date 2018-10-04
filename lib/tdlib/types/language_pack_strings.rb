module TD::Types
  # Contains a list of language pack strings.
  #
  # @attr strings [Array<TD::Types::LanguagePackString>] A list of language pack strings.
  class LanguagePackStrings < Base
    attribute :strings, TD::Types::Array.of(TD::Types::LanguagePackString)
  end
end
