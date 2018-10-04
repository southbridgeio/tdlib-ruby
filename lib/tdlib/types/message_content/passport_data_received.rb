module TD::Types
  # Telegram Passport data has been received; for bots only.
  #
  # @attr elements [Array<TD::Types::EncryptedPassportElement>] List of received Telegram Passport elements.
  # @attr credentials [TD::Types::EncryptedCredentials] Encrypted data credentials.
  class MessageContent::PassportDataReceived < MessageContent
    attribute :elements, TD::Types::Array.of(TD::Types::EncryptedPassportElement)
    attribute :credentials, TD::Types::EncryptedCredentials
  end
end
