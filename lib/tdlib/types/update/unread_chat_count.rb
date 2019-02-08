module TD::Types
  # Number of unread chats, i.e.
  # with unread messages or marked as unread, has changed.
  # This update is sent only if a message database is used.
  #
  # @attr unread_count [Integer] Total number of unread chats.
  # @attr unread_unmuted_count [Integer] Total number of unread unmuted chats.
  # @attr marked_as_unread_count [Integer] Total number of chats marked as unread.
  # @attr marked_as_unread_unmuted_count [Integer] Total number of unmuted chats marked as unread.
  class Update::UnreadChatCount < Update
    attribute :unread_count, TD::Types::Integer
    attribute :unread_unmuted_count, TD::Types::Integer
    attribute :marked_as_unread_count, TD::Types::Integer
    attribute :marked_as_unread_unmuted_count, TD::Types::Integer
  end
end
