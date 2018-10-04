module TD::Types
  # A strike-through rich text.
  #
  # @attr text [TD::Types::RichText] Text.
  class RichText::Strikethrough < RichText
    attribute :text, TD::Types::RichText
  end
end
