module TD::Types
  # A message with an unread mention was read.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr unread_mention_count [Integer] The new number of unread mention messages left in the chat.
  class Update::MessageMentionRead < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :unread_mention_count, TD::Types::Integer
  end
end
