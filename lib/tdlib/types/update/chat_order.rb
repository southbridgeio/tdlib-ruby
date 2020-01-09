module TD::Types
  # The order of the chat in the chat list has changed.
  # Instead of this update updateChatLastMessage, updateChatIsPinned, updateChatDraftMessage, or updateChatIsSponsored
  #   might be sent.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr order [Integer] New value of the order.
  class Update::ChatOrder < Update
    attribute :chat_id, TD::Types::Integer
    attribute :order, TD::Types::Integer
  end
end
