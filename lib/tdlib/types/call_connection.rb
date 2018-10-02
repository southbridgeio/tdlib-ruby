module TD::Types
  # Describes the address of UDP reflectors.
  #
  # @attr id [Integer] Reflector identifier.
  # @attr ip [String] IPv4 reflector address.
  # @attr ipv6 [String] IPv6 reflector address.
  # @attr port [Integer] Reflector port number.
  # @attr peer_tag [String] Connection peer tag.
  class CallConnection < Base
    attribute :id, TD::Types::Integer
    attribute :ip, TD::Types::String
    attribute :ipv6, TD::Types::String
    attribute :port, TD::Types::Integer
    attribute :peer_tag, TD::Types::String
  end
end
