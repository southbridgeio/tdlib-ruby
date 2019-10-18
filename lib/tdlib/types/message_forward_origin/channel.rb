module TD::Types
  # The message was originally a post in a channel.
  #
  # @attr chat_id [Integer] Identifier of the chat from which the message was originally forwarded.
  # @attr message_id [Integer] Message identifier of the original message; 0 if unknown.
  # @attr author_signature [String] Original post author signature.
  class MessageForwardOrigin::Channel < MessageForwardOrigin
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :author_signature, TD::Types::String
  end
end
