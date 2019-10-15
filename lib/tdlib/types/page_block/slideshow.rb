module TD::Types
  # A slideshow.
  #
  # @attr page_blocks [Array<TD::Types::PageBlock>] Slideshow item contents.
  # @attr caption [TD::Types::PageBlockCaption] Block caption.
  class PageBlock::Slideshow < PageBlock
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :caption, TD::Types::PageBlockCaption
  end
end
