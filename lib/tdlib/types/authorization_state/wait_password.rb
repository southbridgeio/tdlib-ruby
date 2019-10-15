module TD::Types
  # The user has been authorized, but needs to enter a password to start using the application.
  #
  # @attr password_hint [String, nil] Hint for the password; may be empty.
  # @attr has_recovery_email_address [Boolean] True, if a recovery email address has been set up.
  # @attr recovery_email_address_pattern [String, nil] Pattern of the email address to which the recovery email was
  #   sent; empty until a recovery email has been sent.
  class AuthorizationState::WaitPassword < AuthorizationState
    attribute :password_hint, TD::Types::String.optional.default(nil)
    attribute :has_recovery_email_address, TD::Types::Bool
    attribute :recovery_email_address_pattern, TD::Types::String.optional.default(nil)
  end
end
