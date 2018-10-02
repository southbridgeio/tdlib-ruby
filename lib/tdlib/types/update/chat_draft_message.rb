module TD::Types
  # A chat draft has changed.
  # Be aware that the update may come in the currently opened chat but with old content of the draft.
  # If the user has changed the content of the draft, this update shouldn't be applied.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr draft_message [DraftMessage] The new draft message; may be null.
  # @attr order [Integer] New value of the chat order.
  class Update::ChatDraftMessage < Update
    attribute :chat_id, TD::Types::Integer
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
    attribute :order, TD::Types::Integer
  end
end
