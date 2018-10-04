module TD::Types
  # A new incoming callback query from a message sent via a bot; for bots only.
  #
  # @attr id [Integer] Unique query identifier.
  # @attr sender_user_id [Integer] Identifier of the user who sent the query.
  # @attr inline_message_id [String] Identifier of the inline message, from which the query originated.
  # @attr chat_instance [Integer] An identifier uniquely corresponding to the chat a message was sent to.
  # @attr payload [TD::Types::CallbackQueryPayload] Query payload.
  class Update::NewInlineCallbackQuery < Update
    attribute :id, TD::Types::Integer
    attribute :sender_user_id, TD::Types::Integer
    attribute :inline_message_id, TD::Types::String
    attribute :chat_instance, TD::Types::Integer
    attribute :payload, TD::Types::CallbackQueryPayload
  end
end
