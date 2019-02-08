module TD::Types
  # An authentication code is delivered via a private Telegram message, which can be viewed in another client.
  #
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::TelegramMessage < AuthenticationCodeType
    attribute :length, TD::Types::Integer
  end
end
