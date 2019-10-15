module TD::Types
  # An audio message.
  #
  # @attr audio [TD::Types::Audio, nil] Message content; may be null.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Audio < PushMessageContent
    attribute :audio, TD::Types::Audio.optional.default(nil)
    attribute :is_pinned, TD::Types::Bool
  end
end
