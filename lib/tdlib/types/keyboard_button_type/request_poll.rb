module TD::Types
  # A button that sends the user's location when pressed; available only in private chats.
  class KeyboardButtonType::RequestPoll < KeyboardButtonType
    attribute :force_regular, TD::Types::Bool
    attribute :force_quiz, TD::Types::Bool
  end
end
