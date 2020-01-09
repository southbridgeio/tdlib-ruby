module TD::Types
  # A voice note.
  #
  # @attr voice_note [TD::Types::VoiceNote, nil] Voice note; may be null.
  # @attr caption [TD::Types::PageBlockCaption] Voice note caption.
  class PageBlock::VoiceNote < PageBlock
    attribute :voice_note, TD::Types::VoiceNote.optional.default(nil)
    attribute :caption, TD::Types::PageBlockCaption
  end
end
