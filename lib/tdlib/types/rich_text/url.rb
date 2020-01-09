module TD::Types
  # A rich text URL link.
  #
  # @attr text [TD::Types::RichText] Text.
  # @attr url [String] URL.
  # @attr is_cached [Boolean] True, if the URL has cached instant view server-side.
  class RichText::Url < RichText
    attribute :text, TD::Types::RichText
    attribute :url, TD::Types::String
    attribute :is_cached, TD::Types::Bool
  end
end
