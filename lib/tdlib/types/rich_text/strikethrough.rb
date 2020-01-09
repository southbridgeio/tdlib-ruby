module TD::Types
  # A strikethrough rich text.
  #
  # @attr text [TD::Types::RichText] Text.
  class RichText::Strikethrough < RichText
    attribute :text, TD::Types::RichText
  end
end
