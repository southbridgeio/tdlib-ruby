module TD::Types
  # A text paragraph.
  #
  # @attr text [TD::Types::RichText] Paragraph text.
  class PageBlock::Paragraph < PageBlock
    attribute :text, TD::Types::RichText
  end
end
