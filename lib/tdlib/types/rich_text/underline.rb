module TD::Types
  # An underlined rich text.
  #
  # @attr text [RichText] Text.
  class RichText::Underline < RichText
    attribute :text, TD::Types::RichText
  end
end
