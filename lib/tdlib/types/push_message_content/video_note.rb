module TD::Types
  # A video note message.
  #
  # @attr video_note [TD::Types::VideoNote, nil] Message content; may be null.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::VideoNote < PushMessageContent
    attribute :video_note, TD::Types::VideoNote.optional.default(nil)
    attribute :is_pinned, TD::Types::Bool
  end
end
