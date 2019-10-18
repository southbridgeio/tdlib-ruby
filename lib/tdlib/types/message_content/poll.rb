module TD::Types
  # A message with a poll.
  #
  # @attr poll [TD::Types::Poll] Poll.
  class MessageContent::Poll < MessageContent
    attribute :poll, TD::Types::Poll
  end
end
