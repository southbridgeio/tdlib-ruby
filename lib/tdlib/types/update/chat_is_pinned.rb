module TD::Types
  # A chat was pinned or unpinned.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr is_pinned [Boolean] New value of is_pinned.
  # @attr order [Integer] New value of the chat order.
  class Update::ChatIsPinned < Update
    attribute :chat_id, TD::Types::Integer
    attribute :is_pinned, TD::Types::Bool
    attribute :order, TD::Types::Integer
  end
end
