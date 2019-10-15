module TD::Types
  # New message was received through a push notification.
  #
  # @attr message_id [Integer] The message identifier.
  #   The message will not be available in the chat history, but the ID can be used in viewMessages and as
  #   reply_to_message_id.
  # @attr sender_user_id [Integer] Sender of the message.
  #   Corresponding user may be inaccessible.
  # @attr content [TD::Types::PushMessageContent] Push message content.
  class NotificationType::NewPushMessage < NotificationType
    attribute :message_id, TD::Types::Integer
    attribute :sender_user_id, TD::Types::Integer
    attribute :content, TD::Types::PushMessageContent
  end
end
