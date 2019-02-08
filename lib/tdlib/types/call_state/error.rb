module TD::Types
  # The call has ended with an error.
  #
  # @attr error [TD::Types::Error] Error.
  #   An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout.
  class CallState::Error < CallState
    attribute :error, TD::Types::Error
  end
end
