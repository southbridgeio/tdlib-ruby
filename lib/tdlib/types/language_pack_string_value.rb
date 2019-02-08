module TD::Types
  # Represents the value of a string in a language pack.
  class LanguagePackStringValue < Base
    %w[
      ordinary
      pluralized
      deleted
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/language_pack_string_value/#{type}"
    end
  end
end
