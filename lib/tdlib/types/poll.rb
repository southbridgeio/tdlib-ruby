module TD::Types
  # Describes a poll.
  #
  # @attr id [Integer] Unique poll identifier.
  # @attr question [String] Poll question, 1-255 characters.
  # @attr options [Array<TD::Types::PollOption>] List of poll answer options.
  # @attr total_voter_count [Integer] Total number of voters, participating in the poll.
  # @attr is_closed [Boolean] True, if the poll is closed.
  class Poll < Base
    attribute :id, TD::Types::Integer
    attribute :question, TD::Types::String
    attribute :options, TD::Types::Array.of(TD::Types::PollOption)
    attribute :total_voter_count, TD::Types::Integer
    attribute :is_closed, TD::Types::Bool
  end
end
