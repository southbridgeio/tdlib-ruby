module TD::Types
  # A message with a poll.
  #
  # @attr question [String] Poll question.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Poll < PushMessageContent
    attribute :question, TD::Types::String
    attribute :is_pinned, TD::Types::Bool
  end
end
