module TD::Types
  # Contains information about an invoice payment form.
  #
  # @attr invoice [TD::Types::Invoice] Full information of the invoice.
  # @attr url [String] Payment form URL.
  # @attr payments_provider [TD::Types::PaymentsProviderStripe, nil] Contains information about the payment provider,
  #   if available, to support it natively without the need for opening the URL; may be null.
  # @attr saved_order_info [TD::Types::OrderInfo, nil] Saved server-side order information; may be null.
  # @attr saved_credentials [TD::Types::SavedCredentials, nil] Contains information about saved card credentials; may
  #   be null.
  # @attr can_save_credentials [Boolean] True, if the user can choose to save credentials.
  # @attr need_password [Boolean] True, if the user will be able to save credentials protected by a password they set
  #   up.
  class PaymentForm < Base
    attribute :invoice, TD::Types::Invoice
    attribute :url, TD::Types::String
    attribute :payments_provider, TD::Types::PaymentsProviderStripe.optional.default(nil)
    attribute :saved_order_info, TD::Types::OrderInfo.optional.default(nil)
    attribute :saved_credentials, TD::Types::SavedCredentials.optional.default(nil)
    attribute :can_save_credentials, TD::Types::Bool
    attribute :need_password, TD::Types::Bool
  end
end
