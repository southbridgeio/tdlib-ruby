module TD::Types
  # Describes a call.
  #
  # @attr id [Integer] Call identifier, not persistent.
  # @attr user_id [Integer] Peer user identifier.
  # @attr is_outgoing [Boolean] True, if the call is outgoing.
  # @attr state [TD::Types::CallState] Call state.
  class Call < Base
    attribute :id, TD::Types::Integer
    attribute :user_id, TD::Types::Integer
    attribute :is_outgoing, TD::Types::Bool
    attribute :state, TD::Types::CallState
  end
end
