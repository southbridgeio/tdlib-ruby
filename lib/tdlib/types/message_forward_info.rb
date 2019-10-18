module TD::Types
  # Contains information about a forwarded message.
  #
  # @attr origin [TD::Types::MessageForwardOrigin] Origin of a forwarded message.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was originally sent.
  # @attr from_chat_id [Integer] For messages forwarded to the chat with the current user (saved messages) or to the
  #   channel discussion supergroup, the identifier of the chat from which the message was forwarded last time; 0 if unknown.
  # @attr from_message_id [Integer] For messages forwarded to the chat with the current user (saved messages) or to the
  #   channel discussion supergroup, the identifier of the original message from which the new message was forwarded last
  #   time; 0 if unknown.
  class MessageForwardInfo < Base
    attribute :origin, TD::Types::MessageForwardOrigin
    attribute :date, TD::Types::Integer
    attribute :from_chat_id, TD::Types::Integer
    attribute :from_message_id, TD::Types::Integer
  end
end
