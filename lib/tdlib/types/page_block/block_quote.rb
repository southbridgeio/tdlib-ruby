module TD::Types
  # A block quote.
  #
  # @attr text [RichText] Quote text.
  # @attr caption [RichText] Quote caption.
  class PageBlock::BlockQuote < PageBlock
    attribute :text, TD::Types::RichText
    attribute :caption, TD::Types::RichText
  end
end
