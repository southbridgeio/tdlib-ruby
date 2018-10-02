module TD::Types
  # A collage.
  #
  # @attr page_blocks [Array<PageBlock>] Collage item contents.
  # @attr caption [RichText] Block caption.
  class PageBlock::Collage < PageBlock
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :caption, TD::Types::RichText
  end
end
