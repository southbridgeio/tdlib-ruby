module TD::Types
  # A message with a location.
  #
  # @attr is_live [Boolean] True, if the location is live.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Location < PushMessageContent
    attribute :is_live, TD::Types::Bool
    attribute :is_pinned, TD::Types::Bool
  end
end
