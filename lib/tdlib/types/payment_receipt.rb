module TD::Types
  # Contains information about a successful payment.
  #
  # @attr date [Integer] Point in time (Unix timestamp) when the payment was made.
  # @attr payments_provider_user_id [Integer] User identifier of the payment provider bot.
  # @attr invoice [TD::Types::Invoice] Contains information about the invoice.
  # @attr order_info [TD::Types::OrderInfo] Contains order information; may be null.
  # @attr shipping_option [TD::Types::ShippingOption] Chosen shipping option; may be null.
  # @attr credentials_title [String] Title of the saved credentials.
  class PaymentReceipt < Base
    attribute :date, TD::Types::Integer
    attribute :payments_provider_user_id, TD::Types::Integer
    attribute :invoice, TD::Types::Invoice
    attribute :order_info, TD::Types::OrderInfo.optional.default(nil)
    attribute :shipping_option, TD::Types::ShippingOption.optional.default(nil)
    attribute :credentials_title, TD::Types::String
  end
end
