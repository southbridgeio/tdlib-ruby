module TD::Types
  # A collapsible block.
  #
  # @attr header [TD::Types::RichText] Always visible heading for the block.
  # @attr page_blocks [Array<TD::Types::PageBlock>] Block contents.
  # @attr is_open [Boolean] True, if the block is open by default.
  class PageBlock::Details < PageBlock
    attribute :header, TD::Types::RichText
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :is_open, TD::Types::Bool
  end
end
