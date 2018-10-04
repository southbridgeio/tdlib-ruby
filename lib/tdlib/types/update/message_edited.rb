module TD::Types
  # A message was edited.
  # Changes in the message content will come in a separate updateMessageContent.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr edit_date [Integer] Point in time (Unix timestamp) when the message was edited.
  # @attr reply_markup [TD::Types::ReplyMarkup, nil] New message reply markup; may be null.
  class Update::MessageEdited < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :edit_date, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup.optional.default(nil)
  end
end
