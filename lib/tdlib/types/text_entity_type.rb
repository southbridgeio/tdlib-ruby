module TD::Types
  # Represents a part of the text which must be formatted differently.
  class TextEntityType < Base
    %w[
      mention
      hashtag
      cashtag
      bot_command
      url
      email_address
      phone_number
      bold
      italic
      underline
      strikethrough
      code
      pre
      pre_code
      text_url
      mention_name
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/text_entity_type/#{type}"
    end
  end
end
