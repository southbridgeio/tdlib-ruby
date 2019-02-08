module TD::Types
  # A concatenation of rich texts.
  #
  # @attr texts [Array<TD::Types::RichText>] Texts.
  class RichText::s < RichText
    attribute :texts, TD::Types::Array.of(TD::Types::RichText)
  end
end
