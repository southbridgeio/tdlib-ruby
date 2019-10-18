module TD::Types
  # The chat pinned message was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr pinned_message_id [Integer] The new identifier of the pinned message; 0 if there is no pinned message in the
  #   chat.
  class Update::ChatPinnedMessage < Update
    attribute :chat_id, TD::Types::Integer
    attribute :pinned_message_id, TD::Types::Integer
  end
end
