module TD::Types
  # A photo.
  #
  # @attr photo [TD::Types::Photo, nil] Photo file; may be null.
  # @attr caption [TD::Types::PageBlockCaption] Photo caption.
  # @attr url [String] URL that needs to be opened when the photo is clicked.
  class PageBlock::Photo < PageBlock
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :caption, TD::Types::PageBlockCaption
    attribute :url, TD::Types::String
  end
end
