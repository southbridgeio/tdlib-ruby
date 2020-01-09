module TD::Types
  # The list to which the chat belongs was changed.
  # This update is guaranteed to be sent only when chat.order == 0 and the current or the new chat list is null.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr chat_list [TD::Types::ChatList, nil] The new chat's chat list; may be null.
  class Update::ChatChatList < Update
    attribute :chat_id, TD::Types::Integer
    attribute :chat_list, TD::Types::ChatList.optional.default(nil)
  end
end
