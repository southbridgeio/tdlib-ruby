module TD::Types
  # Describes a text object inside an instant-view web page.
  class RichText < Base
    %w[
      plain
      bold
      italic
      underline
      strikethrough
      fixed
      url
      email_address
      s
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/rich_text/#{type}"
    end
  end
end
