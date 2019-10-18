module TD::Types
  # A poll in a message was stopped.
  #
  # @attr message [TD::Types::Message] The message with the poll.
  class ChatEventAction::PollStopped < ChatEventAction
    attribute :message, TD::Types::Message
  end
end
