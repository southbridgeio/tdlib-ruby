module TD::Types
  # Contains information about a Telegram Passport authorization form that was requested.
  #
  # @attr id [Integer] Unique identifier of the authorization form.
  # @attr required_elements [Array<PassportRequiredElement>] Information about the Telegram Passport elements that need
  #   to be provided to complete the form.
  # @attr elements [Array<PassportElement>] Already available Telegram Passport elements.
  # @attr errors [Array<PassportElementError>] Errors in the elements that are already available.
  # @attr privacy_policy_url [String] URL for the privacy policy of the service; can be empty.
  class PassportAuthorizationForm < Base
    attribute :id, TD::Types::Integer
    attribute :required_elements, TD::Types::Array.of(TD::Types::PassportRequiredElement)
    attribute :elements, TD::Types::Array.of(TD::Types::PassportElement)
    attribute :errors, TD::Types::Array.of(TD::Types::PassportElementError)
    attribute :privacy_policy_url, TD::Types::String.optional.default(nil)
  end
end
