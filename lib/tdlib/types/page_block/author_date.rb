module TD::Types
  # The author and publishing date of a page.
  #
  # @attr author [TD::Types::RichText] Author.
  # @attr publish_date [Integer] Point in time (Unix timestamp) when the article was published; 0 if unknown.
  class PageBlock::AuthorDate < PageBlock
    attribute :author, TD::Types::RichText
    attribute :publish_date, TD::Types::Integer
  end
end
