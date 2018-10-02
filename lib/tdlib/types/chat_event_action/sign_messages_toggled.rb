module TD::Types
  # The sign_messages setting of a channel was toggled.
  #
  # @attr sign_messages [Boolean] New value of sign_messages.
  class ChatEventAction::SignMessagesToggled < ChatEventAction
    attribute :sign_messages, TD::Types::Bool
  end
end
