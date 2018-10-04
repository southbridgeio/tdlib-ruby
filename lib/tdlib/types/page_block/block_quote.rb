module TD::Types
  # A block quote.
  #
  # @attr text [TD::Types::RichText] Quote text.
  # @attr caption [TD::Types::RichText] Quote caption.
  class PageBlock::BlockQuote < PageBlock
    attribute :text, TD::Types::RichText
    attribute :caption, TD::Types::RichText
  end
end
