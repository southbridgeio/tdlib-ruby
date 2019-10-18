module TD::Types
  # The number of online group members has changed.
  # This update with non-zero count is sent only for currently opened chats.
  # There is no guarantee that it will be sent just after the count has changed.
  #
  # @attr chat_id [Integer] Identifier of the chat.
  # @attr online_member_count [Integer] New number of online members in the chat, or 0 if unknown.
  class Update::ChatOnlineMemberCount < Update
    attribute :chat_id, TD::Types::Integer
    attribute :online_member_count, TD::Types::Integer
  end
end
