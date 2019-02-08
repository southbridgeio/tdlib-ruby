module TD::Types
  # A chat was marked as unread or was read.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr is_marked_as_unread [Boolean] New value of is_marked_as_unread.
  class Update::ChatIsMarkedAsUnread < Update
    attribute :chat_id, TD::Types::Integer
    attribute :is_marked_as_unread, TD::Types::Bool
  end
end
