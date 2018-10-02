module TD::Types
  # A slideshow.
  #
  # @attr page_blocks [Array<PageBlock>] Slideshow item contents.
  # @attr caption [RichText] Block caption.
  class PageBlock::Slideshow < PageBlock
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :caption, TD::Types::RichText
  end
end
