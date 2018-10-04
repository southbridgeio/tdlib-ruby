module TD::Types
  # New terms of service must be accepted by the user.
  # If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS
  #   update".
  #
  # @attr terms_of_service_id [String] Identifier of the terms of service.
  # @attr terms_of_service [TD::Types::TermsOfService] The new terms of service.
  class Update::TermsOfService < Update
    attribute :terms_of_service_id, TD::Types::String
    attribute :terms_of_service, TD::Types::TermsOfService
  end
end
