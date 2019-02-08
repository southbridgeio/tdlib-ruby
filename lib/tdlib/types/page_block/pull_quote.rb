module TD::Types
  # A pull quote.
  #
  # @attr text [TD::Types::RichText] Quote text.
  # @attr caption [TD::Types::RichText] Quote caption.
  class PageBlock::PullQuote < PageBlock
    attribute :text, TD::Types::RichText
    attribute :caption, TD::Types::RichText
  end
end
