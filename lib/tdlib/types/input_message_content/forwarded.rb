module TD::Types
  # A forwarded message.
  #
  # @attr from_chat_id [Integer] Identifier for the chat this forwarded message came from.
  # @attr message_id [Integer] Identifier of the message to forward.
  # @attr in_game_share [Boolean] True, if a game message should be shared within a launched game; applies only to game
  #   messages.
  # @attr send_copy [Boolean] True, if content of the message needs to be copied without a link to the original
  #   message.
  #   Always true if the message is forwarded to a secret chat.
  # @attr remove_caption [Boolean] True, if media caption of the message copy needs to be removed.
  #   Ignored if send_copy is false.
  class InputMessageContent::Forwarded < InputMessageContent
    attribute :from_chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :in_game_share, TD::Types::Bool
    attribute :send_copy, TD::Types::Bool
    attribute :remove_caption, TD::Types::Bool
  end
end
