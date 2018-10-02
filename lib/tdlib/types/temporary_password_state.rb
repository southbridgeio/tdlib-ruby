module TD::Types
  # Returns information about the availability of a temporary password, which can be used for payments.
  #
  # @attr has_password [Boolean] True, if a temporary password is available.
  # @attr valid_for [Integer] Time left before the temporary password expires, in seconds.
  class TemporaryPasswordState < Base
    attribute :has_password, TD::Types::Bool
    attribute :valid_for, TD::Types::Integer
  end
end
