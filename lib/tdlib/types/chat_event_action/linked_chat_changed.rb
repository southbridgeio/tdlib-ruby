module TD::Types
  # The linked chat of a supergroup was changed.
  #
  # @attr old_linked_chat_id [Integer] Previous supergroup linked chat identifier.
  # @attr new_linked_chat_id [Integer] New supergroup linked chat identifier.
  class ChatEventAction::LinkedChatChanged < ChatEventAction
    attribute :old_linked_chat_id, TD::Types::Integer
    attribute :new_linked_chat_id, TD::Types::Integer
  end
end
