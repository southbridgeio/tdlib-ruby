module TD::Types
  # A text message.
  #
  # @attr text [String] Message text.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Text < PushMessageContent
    attribute :text, TD::Types::String
    attribute :is_pinned, TD::Types::Bool
  end
end
