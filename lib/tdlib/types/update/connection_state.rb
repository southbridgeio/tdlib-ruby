module TD::Types
  # The connection state has changed.
  #
  # @attr state [TD::Types::ConnectionState] The new connection state.
  class Update::ConnectionState < Update
    attribute :state, TD::Types::ConnectionState
  end
end
