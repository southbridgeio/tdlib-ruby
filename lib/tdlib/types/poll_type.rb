module TD::Types
  # Represents the type of the poll.
  # The following types are possible: regular polls and quiz polls.
  class PollType < Base
    %w[
      regular
      quiz
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/poll_type/#{type}"
    end
  end
end
