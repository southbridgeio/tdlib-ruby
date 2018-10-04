module TD::Types
  # Represents a single button in a bot keyboard.
  #
  # @attr text [String] Text of the button.
  # @attr type [TD::Types::KeyboardButtonType] Type of the button.
  class KeyboardButton < Base
    attribute :text, TD::Types::String
    attribute :type, TD::Types::KeyboardButtonType
  end
end
