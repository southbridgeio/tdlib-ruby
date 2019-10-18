module TD::Types
  # A list of data blocks.
  #
  # @attr items [Array<TD::Types::PageBlockListItem>] The items of the list.
  class PageBlock::List < PageBlock
    attribute :items, TD::Types::Array.of(TD::Types::PageBlockListItem)
  end
end
