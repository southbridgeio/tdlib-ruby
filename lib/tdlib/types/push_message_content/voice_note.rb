module TD::Types
  # A voice note message.
  #
  # @attr voice_note [TD::Types::VoiceNote, nil] Message content; may be null.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::VoiceNote < PushMessageContent
    attribute :voice_note, TD::Types::VoiceNote.optional.default(nil)
    attribute :is_pinned, TD::Types::Bool
  end
end
