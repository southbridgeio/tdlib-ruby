module TD::Types
  # The 2-step verification was enabled recently, user needs to wait.
  #
  # @attr retry_after [Integer] Time left before the session can be used to transfer ownership of a chat, in seconds.
  class CanTransferOwnershipResult::PasswordTooFresh < CanTransferOwnershipResult
    attribute :retry_after, TD::Types::Integer
  end
end
