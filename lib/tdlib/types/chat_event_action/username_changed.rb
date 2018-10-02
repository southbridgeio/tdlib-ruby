module TD::Types
  # The chat username was changed.
  #
  # @attr old_username [String] Previous chat username.
  # @attr new_username [String] New chat username.
  class ChatEventAction::UsernameChanged < ChatEventAction
    attribute :old_username, TD::Types::String
    attribute :new_username, TD::Types::String
  end
end
