module TD::Types
  # A message with information about an ended call.
  #
  # @attr discard_reason [CallDiscardReason] Reason why the call was discarded.
  # @attr duration [Integer] Call duration, in seconds.
  class MessageContent::Call < MessageContent
    attribute :discard_reason, TD::Types::CallDiscardReason
    attribute :duration, TD::Types::Integer
  end
end
