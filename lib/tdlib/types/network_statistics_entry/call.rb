module TD::Types
  # Contains information about the total amount of data that was used for calls.
  #
  # @attr network_type [TD::Types::NetworkType] Type of the network the data was sent through.
  #   Call setNetworkType to maintain the actual network type.
  # @attr sent_bytes [Integer] Total number of bytes sent.
  # @attr received_bytes [Integer] Total number of bytes received.
  # @attr duration [Float] Total call duration, in seconds.
  class NetworkStatisticsEntry::Call < NetworkStatisticsEntry
    attribute :network_type, TD::Types::NetworkType
    attribute :sent_bytes, TD::Types::Integer
    attribute :received_bytes, TD::Types::Integer
    attribute :duration, TD::Types::Float
  end
end
