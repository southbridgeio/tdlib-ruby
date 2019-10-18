module TD::Types
  # TDLib needs the user's authentication code to authorize.
  #
  # @attr code_info [TD::Types::AuthenticationCodeInfo] Information about the authorization code that was sent.
  class AuthorizationState::WaitCode < AuthorizationState
    attribute :code_info, TD::Types::AuthenticationCodeInfo
  end
end
