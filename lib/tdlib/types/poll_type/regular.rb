module TD::Types
  # A regular poll.
  #
  # @attr allow_multiple_answers [Bool] True, if multiple answer options can be chosen simultaneously.
  class PollType::Regular < PollType
    attribute :allow_multiple_answers, TD::Types::Bool
  end
end
