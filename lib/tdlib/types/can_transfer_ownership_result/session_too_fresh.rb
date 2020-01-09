module TD::Types
  # The session was created recently, user needs to wait.
  #
  # @attr retry_after [Integer] Time left before the session can be used to transfer ownership of a chat, in seconds.
  class CanTransferOwnershipResult::SessionTooFresh < CanTransferOwnershipResult
    attribute :retry_after, TD::Types::Integer
  end
end
