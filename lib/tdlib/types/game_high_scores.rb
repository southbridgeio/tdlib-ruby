module TD::Types
  # Contains a list of game high scores.
  #
  # @attr scores [Array<TD::Types::GameHighScore>] A list of game high scores.
  class GameHighScores < Base
    attribute :scores, TD::Types::Array.of(TD::Types::GameHighScore)
  end
end
