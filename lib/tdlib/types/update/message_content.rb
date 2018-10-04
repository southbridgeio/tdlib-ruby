module TD::Types
  # The message content has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr new_content [TD::Types::MessageContent] New message content.
  class Update::MessageContent < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :new_content, TD::Types::MessageContent
  end
end
