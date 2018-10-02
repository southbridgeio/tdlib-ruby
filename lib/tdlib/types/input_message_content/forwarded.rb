module TD::Types
  # A forwarded message.
  #
  # @attr from_chat_id [Integer] Identifier for the chat this forwarded message came from.
  # @attr message_id [Integer] Identifier of the message to forward.
  # @attr in_game_share [Boolean] True, if a game message should be shared within a launched game; applies only to game
  #   messages.
  class InputMessageContent::Forwarded < InputMessageContent
    attribute :from_chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :in_game_share, TD::Types::Bool
  end
end
