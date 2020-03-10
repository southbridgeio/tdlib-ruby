module TD::Types
  # A poll in quiz mode, which has exactly one correct answer option and can be answered only once.
  #
  # @attr correct_option_id [Integer] 0-based identifier of the correct answer option; -1 for a yet unanswered poll.
  class PollType::Quiz < PollType
    attribute :correct_option_id, TD::Types::Integer
  end
end
