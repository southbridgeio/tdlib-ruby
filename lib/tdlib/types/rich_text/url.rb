module TD::Types
  # A rich text URL link.
  #
  # @attr text [TD::Types::RichText] Text.
  # @attr url [String] URL.
  class RichText::Url < RichText
    attribute :text, TD::Types::RichText
    attribute :url, TD::Types::String
  end
end
