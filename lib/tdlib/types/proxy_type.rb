module TD::Types
  # Describes the type of the proxy server.
  class ProxyType < Base
    %w[
      socks5
      http
      mtproto
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/proxy_type/#{type}"
    end
  end
end
