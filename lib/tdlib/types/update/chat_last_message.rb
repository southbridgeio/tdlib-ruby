module TD::Types
  # The last message of a chat was changed.
  # If last_message is null then the last message in the chat became unknown.
  # Some new unknown messages might be added to the chat in this case.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr last_message [TD::Types::Message, nil] The new last message in the chat; may be null.
  # @attr order [Integer] New value of the chat order.
  class Update::ChatLastMessage < Update
    attribute :chat_id, TD::Types::Integer
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :order, TD::Types::Integer
  end
end
