module TD::Types
  # An embedded web page.
  #
  # @attr url [String] Web page URL, if available.
  # @attr html [String] HTML-markup of the embedded page.
  # @attr poster_photo [Photo] Poster photo, if available; may be null.
  # @attr width [Integer] Block width.
  # @attr height [Integer] Block height.
  # @attr caption [RichText] Block caption.
  # @attr is_full_width [Boolean] True, if the block should be full width.
  # @attr allow_scrolling [Boolean] True, if scrolling should be allowed.
  class PageBlock::Embedded < PageBlock
    attribute :url, TD::Types::String.optional.default(nil)
    attribute :html, TD::Types::String
    attribute :poster_photo, TD::Types::Photo.optional.default(nil)
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :caption, TD::Types::RichText
    attribute :is_full_width, TD::Types::Bool
    attribute :allow_scrolling, TD::Types::Bool
  end
end
