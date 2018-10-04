module TD::Types
  # User activity in the chat has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr user_id [Integer] Identifier of a user performing an action.
  # @attr action [TD::Types::ChatAction] The action description.
  class Update::UserChatAction < Update
    attribute :chat_id, TD::Types::Integer
    attribute :user_id, TD::Types::Integer
    attribute :action, TD::Types::ChatAction
  end
end
