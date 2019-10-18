module TD::Types
  # The message failed to be sent.
  #
  # @attr error_code [Integer] An error code; 0 if unknown.
  # @attr error_message [String] Error message.
  # @attr can_retry [Boolean] True, if the message can be re-sent.
  # @attr retry_after [Float] Time left before the message can be re-sent, in seconds.
  #   No update is sent when this field changes.
  class MessageSendingState::Failed < MessageSendingState
    attribute :error_code, TD::Types::Integer
    attribute :error_message, TD::Types::String
    attribute :can_retry, TD::Types::Bool
    attribute :retry_after, TD::Types::Float
  end
end
