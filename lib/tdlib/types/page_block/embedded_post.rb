module TD::Types
  # An embedded post.
  #
  # @attr url [String] Web page URL.
  # @attr author [String] Post author.
  # @attr author_photo [TD::Types::Photo, nil] Post author photo; may be null.
  # @attr date [Integer] Point in time (Unix timestamp) when the post was created; 0 if unknown.
  # @attr page_blocks [Array<TD::Types::PageBlock>] Post content.
  # @attr caption [TD::Types::PageBlockCaption] Post caption.
  class PageBlock::EmbeddedPost < PageBlock
    attribute :url, TD::Types::String
    attribute :author, TD::Types::String
    attribute :author_photo, TD::Types::Photo.optional.default(nil)
    attribute :date, TD::Types::Integer
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :caption, TD::Types::PageBlockCaption
  end
end
