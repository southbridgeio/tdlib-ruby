module TD::Types
  # TDLib needs the user's authentication code to finalize authorization.
  #
  # @attr is_registered [Boolean] True, if the user is already registered.
  # @attr terms_of_service [TermsOfService] Telegram terms of service, which should be accepted before user can
  #   continue registration; may be null.
  # @attr code_info [AuthenticationCodeInfo] Information about the authorization code that was sent.
  class AuthorizationState::WaitCode < AuthorizationState
    attribute :is_registered, TD::Types::Bool
    attribute :terms_of_service, TD::Types::TermsOfService.optional.default(nil)
    attribute :code_info, TD::Types::AuthenticationCodeInfo
  end
end
