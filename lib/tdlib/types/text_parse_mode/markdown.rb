module TD::Types
  # The text should be parsed in markdown-style.
  #
  # @attr version [Integer] Version of the parser: 0 or 1 - Bot API Markdown parse mode, 2 - Bot API MarkdownV2 parse
  #   mode.
  class TextParseMode::Markdown < TextParseMode
    attribute :version, TD::Types::Integer
  end
end
