module TD::Types
  # A strike-through rich text.
  #
  # @attr text [RichText] Text.
  class RichText::Strikethrough < RichText
    attribute :text, TD::Types::RichText
  end
end
