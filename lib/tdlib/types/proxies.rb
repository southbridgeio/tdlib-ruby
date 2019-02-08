module TD::Types
  # Represents a list of proxy servers.
  #
  # @attr proxies [Array<TD::Types::Proxy>] List of proxy servers.
  class Proxies < Base
    attribute :proxies, TD::Types::Array.of(TD::Types::Proxy)
  end
end
