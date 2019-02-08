module TD::Types
  # TDLib needs an encryption key to decrypt the local database.
  #
  # @attr is_encrypted [Boolean] True, if the database is currently encrypted.
  class AuthorizationState::WaitEncryptionKey < AuthorizationState
    attribute :is_encrypted, TD::Types::Bool
  end
end
