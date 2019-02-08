module TD::Types
  # An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
  #
  # @attr name [String] Name of the anchor.
  class PageBlock::Anchor < PageBlock
    attribute :name, TD::Types::String
  end
end
