module TD::Types
  # Describes the way the text should be parsed for TextEntities.
  class TextParseMode < Base
    %w[
      markdown
      html
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/text_parse_mode/#{type}"
    end
  end
end
