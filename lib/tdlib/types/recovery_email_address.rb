module TD::Types
  # Contains information about the current recovery email address.
  #
  # @attr recovery_email_address [String] Recovery email address.
  class RecoveryEmailAddress < Base
    attribute :recovery_email_address, TD::Types::String
  end
end
