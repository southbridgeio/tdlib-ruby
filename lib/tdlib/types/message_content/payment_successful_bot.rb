module TD::Types
  # A payment has been completed; for bots only.
  #
  # @attr invoice_message_id [Integer] Identifier of the message with the corresponding invoice; can be an identifier
  #   of a deleted message.
  # @attr currency [String] Currency for price of the product.
  # @attr total_amount [Integer] Total price for the product, in the minimal quantity of the currency.
  # @attr invoice_payload [String] Invoice payload.
  # @attr shipping_option_id [String, nil] Identifier of the shipping option chosen by the user; may be empty if not
  #   applicable.
  # @attr order_info [TD::Types::OrderInfo, nil] Information about the order; may be null.
  # @attr telegram_payment_charge_id [String] Telegram payment identifier.
  # @attr provider_payment_charge_id [String] Provider payment identifier.
  class MessageContent::PaymentSuccessfulBot < MessageContent
    attribute :invoice_message_id, TD::Types::Integer
    attribute :currency, TD::Types::String
    attribute :total_amount, TD::Types::Integer
    attribute :invoice_payload, TD::Types::String
    attribute :shipping_option_id, TD::Types::String.optional.default(nil)
    attribute :order_info, TD::Types::OrderInfo.optional.default(nil)
    attribute :telegram_payment_charge_id, TD::Types::String
    attribute :provider_payment_charge_id, TD::Types::String
  end
end
