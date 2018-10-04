module TD::Types
  # A bold rich text.
  #
  # @attr text [TD::Types::RichText] Text.
  class RichText::Bold < RichText
    attribute :text, TD::Types::RichText
  end
end
