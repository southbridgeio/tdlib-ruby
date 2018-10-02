module TD::Types
  # Describes the type of an inline keyboard button.
  class InlineKeyboardButtonType < Base
    %w[
      url
      callback
      callback_game
      switch_inline
      buy
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/inline_keyboard_button_type/#{type}"
    end
  end
end
