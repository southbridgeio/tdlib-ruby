module TD::Types
  # A message was deleted.
  #
  # @attr message [Message] Deleted message.
  class ChatEventAction::MessageDeleted < ChatEventAction
    attribute :message, TD::Types::Message
  end
end
