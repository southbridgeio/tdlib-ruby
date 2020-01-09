module TD::Types
  # A chat's has_scheduled_messages field has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr has_scheduled_messages [Boolean] New value of has_scheduled_messages.
  class Update::ChatHasScheduledMessages < Update
    attribute :chat_id, TD::Types::Integer
    attribute :has_scheduled_messages, TD::Types::Bool
  end
end
