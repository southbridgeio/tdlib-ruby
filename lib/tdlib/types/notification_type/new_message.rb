module TD::Types
  # New message was received.
  #
  # @attr message [TD::Types::Message] The message.
  class NotificationType::NewMessage < NotificationType
    attribute :message, TD::Types::Message
  end
end
