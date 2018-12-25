module TD::Types
  # Contains encrypted Telegram Passport data credentials.
  #
  # @attr data [String] The encrypted credentials.
  # @attr hash [String] The decrypted data hash.
  # @attr secret [String] Secret for data decryption, encrypted with the service's public key.
  class EncryptedCredentials < Base
    attribute :data, TD::Types::String
    attribute :hash, TD::Types::String
    attribute :secret, TD::Types::String
  end
end
