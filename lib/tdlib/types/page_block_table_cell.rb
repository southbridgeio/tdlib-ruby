module TD::Types
  # Represents a cell of a table.
  #
  # @attr text [TD::Types::RichText, nil] Cell text; may be null.
  #   If the text is null, then the cell should be invisible.
  # @attr is_header [Boolean] True, if it is a header cell.
  # @attr colspan [Integer] The number of columns the cell should span.
  # @attr rowspan [Integer] The number of rows the cell should span.
  # @attr align [TD::Types::PageBlockHorizontalAlignment] Horizontal cell content alignment.
  # @attr valign [TD::Types::PageBlockVerticalAlignment] Vertical cell content alignment.
  class PageBlockTableCell < Base
    attribute :text, TD::Types::RichText.optional.default(nil)
    attribute :is_header, TD::Types::Bool
    attribute :colspan, TD::Types::Integer
    attribute :rowspan, TD::Types::Integer
    attribute :align, TD::Types::PageBlockHorizontalAlignment
    attribute :valign, TD::Types::PageBlockVerticalAlignment
  end
end
