module TD::Types
  # Contains the description of an error in a Telegram Passport element; for bots only.
  #
  # @attr type [PassportElementType] Type of Telegram Passport element that has the error.
  # @attr message [String] Error message.
  # @attr source [InputPassportElementErrorSource] Error source.
  class InputPassportElementError < Base
    attribute :type, TD::Types::PassportElementType
    attribute :message, TD::Types::String
    attribute :source, TD::Types::InputPassportElementErrorSource
  end
end
