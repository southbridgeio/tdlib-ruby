module TD::Types
  # A list of texts.
  #
  # @attr items [Array<TD::Types::RichText>] Texts.
  # @attr is_ordered [Boolean] True, if the items should be marked with numbers.
  class PageBlock::List < PageBlock
    attribute :items, TD::Types::Array.of(TD::Types::RichText)
    attribute :is_ordered, TD::Types::Bool
  end
end
