module TD::Types
  # Describes a Vertical alignment of a table cell content.
  class PageBlockVerticalAlignment < Base
    %w[
      top
      middle
      bottom
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/page_block_vertical_alignment/#{type}"
    end
  end
end
