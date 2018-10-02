module TD::Types
  # Number of unread messages has changed.
  # This update is sent only if a message database is used.
  #
  # @attr unread_count [Integer] Total number of unread messages.
  # @attr unread_unmuted_count [Integer] Total number of unread messages in unmuted chats.
  class Update::UnreadMessageCount < Update
    attribute :unread_count, TD::Types::Integer
    attribute :unread_unmuted_count, TD::Types::Integer
  end
end
