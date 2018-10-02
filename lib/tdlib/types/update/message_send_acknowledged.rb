module TD::Types
  # A request to send a message has reached the Telegram server.
  # This doesn't mean that the message will be sent successfully or even that the send message request will be
  #   processed.
  # This update will be sent only if the option "use_quick_ack" is set to true.
  # This update may be sent multiple times for the same message.
  #
  # @attr chat_id [Integer] The chat identifier of the sent message.
  # @attr message_id [Integer] A temporary message identifier.
  class Update::MessageSendAcknowledged < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
  end
end
