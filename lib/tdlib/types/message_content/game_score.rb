module TD::Types
  # A new high score was achieved in a game.
  #
  # @attr game_message_id [Integer] Identifier of the message with the game, can be an identifier of a deleted message.
  # @attr game_id [Integer] Identifier of the game; may be different from the games presented in the message with the
  #   game.
  # @attr score [Integer] New score.
  class MessageContent::GameScore < MessageContent
    attribute :game_message_id, TD::Types::Integer
    attribute :game_id, TD::Types::Integer
    attribute :score, TD::Types::Integer
  end
end
