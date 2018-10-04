module TD::Types
  # A new message was received; can also be an outgoing message.
  #
  # @attr message [TD::Types::Message] The new message.
  # @attr disable_notification [Boolean] True, if this message must not generate a notification.
  # @attr contains_mention [Boolean] True, if the message contains a mention of the current user.
  class Update::NewMessage < Update
    attribute :message, TD::Types::Message
    attribute :disable_notification, TD::Types::Bool
    attribute :contains_mention, TD::Types::Bool
  end
end
