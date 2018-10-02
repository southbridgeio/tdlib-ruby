module TD::Types
  # A new incoming pre-checkout query; for bots only.
  # Contains full information about a checkout.
  #
  # @attr id [Integer] Unique query identifier.
  # @attr sender_user_id [Integer] Identifier of the user who sent the query.
  # @attr currency [String] Currency for the product price.
  # @attr total_amount [Integer] Total price for the product, in the minimal quantity of the currency.
  # @attr invoice_payload [String] Invoice payload.
  # @attr shipping_option_id [String] Identifier of a shipping option chosen by the user; may be empty if not
  #   applicable.
  # @attr order_info [OrderInfo] Information about the order; may be null.
  class Update::NewPreCheckoutQuery < Update
    attribute :id, TD::Types::Integer
    attribute :sender_user_id, TD::Types::Integer
    attribute :currency, TD::Types::String
    attribute :total_amount, TD::Types::Integer
    attribute :invoice_payload, TD::Types::String
    attribute :shipping_option_id, TD::Types::String.optional.default(nil)
    attribute :order_info, TD::Types::OrderInfo.optional.default(nil)
  end
end
