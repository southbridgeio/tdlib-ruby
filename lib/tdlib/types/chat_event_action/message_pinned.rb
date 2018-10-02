module TD::Types
  # A message was pinned.
  #
  # @attr message [Message] Pinned message.
  class ChatEventAction::MessagePinned < ChatEventAction
    attribute :message, TD::Types::Message
  end
end
