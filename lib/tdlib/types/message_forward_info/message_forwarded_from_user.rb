module TD::Types
  # The message was originally written by a known user.
  #
  # @attr sender_user_id [Integer] Identifier of the user that originally sent this message.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was originally sent.
  # @attr forwarded_from_chat_id [Integer] For messages forwarded to the chat with the current user (saved messages),
  #   the identifier of the chat from which the message was forwarded; 0 if unknown.
  # @attr forwarded_from_message_id [Integer] For messages forwarded to the chat with the current user (saved messages)
  #   the identifier of the original message from which the new message was forwarded; 0 if unknown.
  class MessageForwardInfo::MessageForwardedFromUser < MessageForwardInfo
    attribute :sender_user_id, TD::Types::Integer
    attribute :date, TD::Types::Integer
    attribute :forwarded_from_chat_id, TD::Types::Integer
    attribute :forwarded_from_message_id, TD::Types::Integer
  end
end
