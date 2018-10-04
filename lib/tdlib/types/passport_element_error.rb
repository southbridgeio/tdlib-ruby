module TD::Types
  # Contains the description of an error in a Telegram Passport element.
  #
  # @attr type [TD::Types::PassportElementType] Type of the Telegram Passport element which has the error.
  # @attr message [String] Error message.
  # @attr source [TD::Types::PassportElementErrorSource] Error source.
  class PassportElementError < Base
    attribute :type, TD::Types::PassportElementType
    attribute :message, TD::Types::String
    attribute :source, TD::Types::PassportElementErrorSource
  end
end
