module TD::Types
  # Stripe payment provider.
  #
  # @attr publishable_key [String] Stripe API publishable key.
  # @attr need_country [Boolean] True, if the user country must be provided.
  # @attr need_postal_code [Boolean] True, if the user ZIP/postal code must be provided.
  # @attr need_cardholder_name [Boolean] True, if the cardholder name must be provided.
  class PaymentsProviderStripe < Base
    attribute :publishable_key, TD::Types::String
    attribute :need_country, TD::Types::Bool
    attribute :need_postal_code, TD::Types::Bool
    attribute :need_cardholder_name, TD::Types::Bool
  end
end
