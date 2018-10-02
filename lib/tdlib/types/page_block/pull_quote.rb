module TD::Types
  # A pull quote.
  #
  # @attr text [RichText] Quote text.
  # @attr caption [RichText] Quote caption.
  class PageBlock::PullQuote < PageBlock
    attribute :text, TD::Types::RichText
    attribute :caption, TD::Types::RichText
  end
end
