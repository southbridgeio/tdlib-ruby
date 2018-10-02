module TD::Types
  # A HTTP transparent proxy server.
  #
  # @attr username [String] Username for logging in; may be empty.
  # @attr password [String] Password for logging in; may be empty.
  # @attr http_only [Boolean] Pass true, if the proxy supports only HTTP requests and doesn't support transparent TCP
  #   connections via HTTP CONNECT method.
  class ProxyType::Http < ProxyType
    attribute :username, TD::Types::String.optional.default(nil)
    attribute :password, TD::Types::String.optional.default(nil)
    attribute :http_only, TD::Types::Bool
  end
end
