module TD::Types
  # The call is pending, waiting to be accepted by a user.
  #
  # @attr is_created [Boolean] True, if the call has already been created by the server.
  # @attr is_received [Boolean] True, if the call has already been received by the other party.
  class CallState::Pending < CallState
    attribute :is_created, TD::Types::Bool
    attribute :is_received, TD::Types::Bool
  end
end
