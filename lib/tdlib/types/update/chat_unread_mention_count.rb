module TD::Types
  # The chat unread_mention_count has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr unread_mention_count [Integer] The number of unread mention messages left in the chat.
  class Update::ChatUnreadMentionCount < Update
    attribute :chat_id, TD::Types::Integer
    attribute :unread_mention_count, TD::Types::Integer
  end
end
