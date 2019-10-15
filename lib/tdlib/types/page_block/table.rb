module TD::Types
  # A table.
  #
  # @attr caption [TD::Types::RichText] Table caption.
  # @attr cells [Array<Array<TD::Types::PageBlockTableCell>>] Table cells.
  # @attr is_bordered [Boolean] True, if the table is bordered.
  # @attr is_striped [Boolean] True, if the table is striped.
  class PageBlock::Table < PageBlock
    attribute :caption, TD::Types::RichText
    attribute :cells, TD::Types::Array.of(TD::Types::Array.of(TD::Types::PageBlockTableCell))
    attribute :is_bordered, TD::Types::Bool
    attribute :is_striped, TD::Types::Bool
  end
end
