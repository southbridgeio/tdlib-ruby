module TD::Types
  # The call is ready to use.
  #
  # @attr protocol [CallProtocol] Call protocols supported by the peer.
  # @attr connections [Array<CallConnection>] Available UDP reflectors.
  # @attr config [String] A JSON-encoded call config.
  # @attr encryption_key [String] Call encryption key.
  # @attr emojis [Array<String>] Encryption key emojis fingerprint.
  class CallState::Ready < CallState
    attribute :protocol, TD::Types::CallProtocol
    attribute :connections, TD::Types::Array.of(TD::Types::CallConnection)
    attribute :config, TD::Types::String
    attribute :encryption_key, TD::Types::String
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
