module TD::Types
  # Contains a list of t.me URLs.
  #
  # @attr urls [Array<TMeUrl>] List of URLs.
  class TMeUrls < Base
    attribute :urls, TD::Types::Array.of(TD::Types::TMeUrl)
  end
end
