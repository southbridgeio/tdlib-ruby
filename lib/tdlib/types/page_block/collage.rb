module TD::Types
  # A collage.
  #
  # @attr page_blocks [Array<TD::Types::PageBlock>] Collage item contents.
  # @attr caption [TD::Types::RichText] Block caption.
  class PageBlock::Collage < PageBlock
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :caption, TD::Types::RichText
  end
end
