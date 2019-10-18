module TD::Types
  # Describes a horizontal alignment of a table cell content.
  class PageBlockHorizontalAlignment < Base
    %w[
      left
      center
      right
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/page_block_horizontal_alignment/#{type}"
    end
  end
end
