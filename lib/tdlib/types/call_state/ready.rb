module TD::Types
  # The call is ready to use.
  #
  # @attr protocol [TD::Types::CallProtocol] Call protocols supported by the peer.
  # @attr connections [Array<TD::Types::CallConnection>] Available UDP reflectors.
  # @attr config [String] A JSON-encoded call config.
  # @attr encryption_key [String] Call encryption key.
  # @attr emojis [Array<String>] Encryption key emojis fingerprint.
  # @attr allow_p2p [Boolean] True, if peer-to-peer connection is allowed by users privacy settings.
  class CallState::Ready < CallState
    attribute :protocol, TD::Types::CallProtocol
    attribute :connections, TD::Types::Array.of(TD::Types::CallConnection)
    attribute :config, TD::Types::String
    attribute :encryption_key, TD::Types::String
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
    attribute :allow_p2p, TD::Types::Bool
  end
end
