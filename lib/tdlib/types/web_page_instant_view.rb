module TD::Types
  # Describes an instant view page for a web page.
  #
  # @attr page_blocks [Array<TD::Types::PageBlock>] Content of the web page.
  # @attr is_full [Boolean] True, if the instant view contains the full page.
  #   A network request might be needed to get the full web page instant view.
  class WebPageInstantView < Base
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :is_full, TD::Types::Bool
  end
end
