module TD::Types
  # TDLib client is in its final state.
  # All databases are closed and all resources are released.
  # No other updates will be received after this.
  # All queries will be responded to with error code 500.
  # To continue working, one should create a new instance of the TDLib client.
  class AuthorizationState::Closed < AuthorizationState
  end
end
