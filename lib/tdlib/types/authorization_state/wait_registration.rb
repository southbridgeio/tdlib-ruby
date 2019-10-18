module TD::Types
  # The user is unregistered and need to accept terms of service and enter their first name and last name to finish
  #   registration.
  #
  # @attr terms_of_service [TD::Types::TermsOfService] Telegram terms of service.
  class AuthorizationState::WaitRegistration < AuthorizationState
    attribute :terms_of_service, TD::Types::TermsOfService
  end
end
