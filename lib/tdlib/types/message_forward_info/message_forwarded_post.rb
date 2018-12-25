module TD::Types
  # The message was originally a post in a channel.
  #
  # @attr chat_id [Integer] Identifier of the chat from which the message was forwarded.
  # @attr author_signature [String] Post author signature.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was originally sent.
  # @attr message_id [Integer] Message identifier of the original message from which the new message was forwarded; 0
  #   if unknown.
  # @attr forwarded_from_chat_id [Integer] For messages forwarded to the chat with the current user (saved messages),
  #   the identifier of the chat from which the message was forwarded; 0 if unknown.
  # @attr forwarded_from_message_id [Integer] For messages forwarded to the chat with the current user (saved
  #   messages), the identifier of the original message from which the new message was forwarded; 0 if unknown.
  class MessageForwardInfo::MessageForwardedPost < MessageForwardInfo
    attribute :chat_id, TD::Types::Integer
    attribute :author_signature, TD::Types::String
    attribute :date, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :forwarded_from_chat_id, TD::Types::Integer
    attribute :forwarded_from_message_id, TD::Types::Integer
  end
end
