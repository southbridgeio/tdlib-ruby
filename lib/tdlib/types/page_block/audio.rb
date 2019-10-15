module TD::Types
  # An audio file.
  #
  # @attr audio [TD::Types::Audio, nil] Audio file; may be null.
  # @attr caption [TD::Types::PageBlockCaption] Audio file caption.
  class PageBlock::Audio < PageBlock
    attribute :audio, TD::Types::Audio.optional.default(nil)
    attribute :caption, TD::Types::PageBlockCaption
  end
end
