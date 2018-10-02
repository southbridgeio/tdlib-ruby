module TD::Types
  # A SOCKS5 proxy server.
  #
  # @attr username [String] Username for logging in; may be empty.
  # @attr password [String] Password for logging in; may be empty.
  class ProxyType::Socks5 < ProxyType
    attribute :username, TD::Types::String.optional.default(nil)
    attribute :password, TD::Types::String.optional.default(nil)
  end
end
