module TD::Types
  # Outgoing messages were read.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr last_read_outbox_message_id [Integer] Identifier of last read outgoing message.
  class Update::ChatReadOutbox < Update
    attribute :chat_id, TD::Types::Integer
    attribute :last_read_outbox_message_id, TD::Types::Integer
  end
end
