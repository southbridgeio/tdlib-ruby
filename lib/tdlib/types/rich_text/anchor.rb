module TD::Types
  # A rich text anchor.
  #
  # @attr text [TD::Types::RichText] Text.
  # @attr name [String] Anchor name.
  class RichText::Anchor < RichText
    attribute :text, TD::Types::RichText
    attribute :name, TD::Types::String
  end
end
