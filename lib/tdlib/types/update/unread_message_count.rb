module TD::Types
  # Number of unread messages in a chat list has changed.
  # This update is sent only if the message database is used.
  #
  # @attr chat_list [TD::Types::ChatList] The chat list with changed number of unread messages.
  # @attr unread_count [Integer] Total number of unread messages.
  # @attr unread_unmuted_count [Integer] Total number of unread messages in unmuted chats.
  class Update::UnreadMessageCount < Update
    attribute :chat_list, TD::Types::ChatList
    attribute :unread_count, TD::Types::Integer
    attribute :unread_unmuted_count, TD::Types::Integer
  end
end
