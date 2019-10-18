module TD::Types
  # Describes an item of a list page block.
  #
  # @attr label [String] Item label.
  # @attr page_blocks [Array<TD::Types::PageBlock>] Item blocks.
  class PageBlockListItem < Base
    attribute :label, TD::Types::String
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
  end
end
