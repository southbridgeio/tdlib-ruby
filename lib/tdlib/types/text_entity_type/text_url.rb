module TD::Types
  # A text description shown instead of a raw URL.
  #
  # @attr url [String] HTTP or tg:// URL to be opened when the link is clicked.
  class TextEntityType::TextUrl < TextEntityType
    attribute :url, TD::Types::String
  end
end
