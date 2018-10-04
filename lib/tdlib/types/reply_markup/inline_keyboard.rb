module TD::Types
  # Contains an inline keyboard layout.
  #
  # @attr rows [Array<Array<TD::Types::InlineKeyboardButton>>] A list of rows of inline keyboard buttons.
  class ReplyMarkup::InlineKeyboard < ReplyMarkup
    attribute :rows, TD::Types::Array.of(TD::Types::Array.of(TD::Types::InlineKeyboardButton))
  end
end
