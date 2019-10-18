module TD::Types
  # A general message with hidden content.
  #
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Hidden < PushMessageContent
    attribute :is_pinned, TD::Types::Bool
  end
end
