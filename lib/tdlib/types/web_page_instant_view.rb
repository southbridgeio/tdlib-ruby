module TD::Types
  # Describes an instant view page for a web page.
  #
  # @attr page_blocks [Array<TD::Types::PageBlock>] Content of the web page.
  # @attr version [Integer] Version of the instant view, currently can be 1 or 2.
  # @attr url [String] Instant view URL; may be different from WebPage.url and must be used for the correct anchors
  #   handling.
  # @attr is_rtl [Boolean] True, if the instant view must be shown from right to left.
  # @attr is_full [Boolean] True, if the instant view contains the full page.
  #   A network request might be needed to get the full web page instant view.
  class WebPageInstantView < Base
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :version, TD::Types::Integer
    attribute :url, TD::Types::String
    attribute :is_rtl, TD::Types::Bool
    attribute :is_full, TD::Types::Bool
  end
end
