module TD::Types
  # A message was edited.
  #
  # @attr old_message [TD::Types::Message] The original message before the edit.
  # @attr new_message [TD::Types::Message] The message after it was edited.
  class ChatEventAction::MessageEdited < ChatEventAction
    attribute :old_message, TD::Types::Message
    attribute :new_message, TD::Types::Message
  end
end
