module TD::Types
  # A marked rich text.
  #
  # @attr text [TD::Types::RichText] Text.
  class RichText::Marked < RichText
    attribute :text, TD::Types::RichText
  end
end
