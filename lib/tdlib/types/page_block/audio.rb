module TD::Types
  # An audio file.
  #
  # @attr audio [TD::Types::Audio] Audio file; may be null.
  # @attr caption [TD::Types::RichText] Audio file caption.
  class PageBlock::Audio < PageBlock
    attribute :audio, TD::Types::Audio.optional.default(nil)
    attribute :caption, TD::Types::RichText
  end
end
