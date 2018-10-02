module TD::Types
  # Represents the current state of 2-step verification.
  #
  # @attr has_password [Boolean] True if a 2-step verification password is set.
  # @attr password_hint [String] Hint for the password; can be empty.
  # @attr has_recovery_email_address [Boolean] True if a recovery email is set.
  # @attr has_passport_data [Boolean] True if some Telegram Passport elements were saved.
  # @attr unconfirmed_recovery_email_address_pattern [String] Pattern of the email address to which the confirmation
  #   email was sent.
  class PasswordState < Base
    attribute :has_password, TD::Types::Bool
    attribute :password_hint, TD::Types::String.optional.default(nil)
    attribute :has_recovery_email_address, TD::Types::Bool
    attribute :has_passport_data, TD::Types::Bool
    attribute :unconfirmed_recovery_email_address_pattern, TD::Types::String
  end
end
