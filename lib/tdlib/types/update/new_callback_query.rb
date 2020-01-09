module TD::Types
  # A new incoming callback query; for bots only.
  #
  # @attr id [Integer] Unique query identifier.
  # @attr sender_user_id [Integer] Identifier of the user who sent the query.
  # @attr chat_id [Integer] Identifier of the chat where the query was sent.
  # @attr message_id [Integer] Identifier of the message, from which the query originated.
  # @attr chat_instance [Integer] Identifier that uniquely corresponds to the chat to which the message was sent.
  # @attr payload [TD::Types::CallbackQueryPayload] Query payload.
  class Update::NewCallbackQuery < Update
    attribute :id, TD::Types::Integer
    attribute :sender_user_id, TD::Types::Integer
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :chat_instance, TD::Types::Integer
    attribute :payload, TD::Types::CallbackQueryPayload
  end
end
