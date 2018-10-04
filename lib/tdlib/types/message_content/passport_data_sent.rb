module TD::Types
  # Telegram Passport data has been sent.
  #
  # @attr types [Array<TD::Types::PassportElementType>] List of Telegram Passport element types sent.
  class MessageContent::PassportDataSent < MessageContent
    attribute :types, TD::Types::Array.of(TD::Types::PassportElementType)
  end
end
