module TD::Types
  # A document message (a general file).
  #
  # @attr document [TD::Types::Document, nil] Message content; may be null.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Document < PushMessageContent
    attribute :document, TD::Types::Document.optional.default(nil)
    attribute :is_pinned, TD::Types::Bool
  end
end
