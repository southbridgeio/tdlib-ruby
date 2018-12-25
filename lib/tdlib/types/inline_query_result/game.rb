module TD::Types
  # Represents information about a game.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr game [TD::Types::Game] Game result.
  class InlineQueryResult::Game < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :game, TD::Types::Game
  end
end
