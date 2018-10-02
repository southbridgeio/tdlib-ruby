module TD::Types
  # The default chat reply markup was changed.
  # Can occur because new messages with reply markup were received or because an old reply markup was hidden by the
  #   user.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr reply_markup_message_id [Integer] Identifier of the message from which reply markup needs to be used; 0 if
  #   there is no default custom reply markup in the chat.
  class Update::ChatReplyMarkup < Update
    attribute :chat_id, TD::Types::Integer
    attribute :reply_markup_message_id, TD::Types::Integer
  end
end
