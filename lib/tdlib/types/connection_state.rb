module TD::Types
  # Describes the current state of the connection to Telegram servers.
  class ConnectionState < Base
    %w[
      waiting_for_network
      connecting_to_proxy
      connecting
      updating
      ready
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/connection_state/#{type}"
    end
  end
end
