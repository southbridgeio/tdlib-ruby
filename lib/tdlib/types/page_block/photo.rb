module TD::Types
  # A photo.
  #
  # @attr photo [Photo] Photo file; may be null.
  # @attr caption [RichText] Photo caption.
  class PageBlock::Photo < PageBlock
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :caption, TD::Types::RichText
  end
end
