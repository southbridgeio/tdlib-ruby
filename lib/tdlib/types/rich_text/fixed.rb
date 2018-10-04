module TD::Types
  # A fixed-width rich text.
  #
  # @attr text [TD::Types::RichText] Text.
  class RichText::Fixed < RichText
    attribute :text, TD::Types::RichText
  end
end
