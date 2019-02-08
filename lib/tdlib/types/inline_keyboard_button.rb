module TD::Types
  # Represents a single button in an inline keyboard.
  #
  # @attr text [String] Text of the button.
  # @attr type [TD::Types::InlineKeyboardButtonType] Type of the button.
  class InlineKeyboardButton < Base
    attribute :text, TD::Types::String
    attribute :type, TD::Types::InlineKeyboardButtonType
  end
end
