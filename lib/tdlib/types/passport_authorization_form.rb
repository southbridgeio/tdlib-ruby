module TD::Types
  # Contains information about a Telegram Passport authorization form that was requested.
  #
  # @attr id [Integer] Unique identifier of the authorization form.
  # @attr required_elements [Array<TD::Types::PassportRequiredElement>] Information about the Telegram Passport
  #   elements that need to be provided to complete the form.
  # @attr privacy_policy_url [String, nil] URL for the privacy policy of the service; may be empty.
  class PassportAuthorizationForm < Base
    attribute :id, TD::Types::Integer
    attribute :required_elements, TD::Types::Array.of(TD::Types::PassportRequiredElement)
    attribute :privacy_policy_url, TD::Types::String.optional.default(nil)
  end
end
