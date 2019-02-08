module TD::Types
  # A message with a game.
  #
  # @attr game [TD::Types::Game] Game.
  class MessageContent::Game < MessageContent
    attribute :game, TD::Types::Game
  end
end
