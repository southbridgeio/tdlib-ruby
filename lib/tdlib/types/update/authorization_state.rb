module TD::Types
  # The user authorization state has changed.
  #
  # @attr authorization_state [TD::Types::AuthorizationState] New authorization state.
  class Update::AuthorizationState < Update
    attribute :authorization_state, TD::Types::AuthorizationState
  end
end
