module TD::Types
  # Contains information about a message draft.
  #
  # @attr reply_to_message_id [Integer] Identifier of the message to reply to; 0 if none.
  # @attr input_message_text [TD::Types::InputMessageContent] Content of the message draft; this should always be of
  #   type inputMessageText.
  class DraftMessage < Base
    attribute :reply_to_message_id, TD::Types::Integer
    attribute :input_message_text, TD::Types::InputMessageContent
  end
end
