module TD::Types
  # A payment has been completed.
  #
  # @attr invoice_message_id [Integer] Identifier of the message with the corresponding invoice; can be an identifier
  #   of a deleted message.
  # @attr currency [String] Currency for the price of the product.
  # @attr total_amount [Integer] Total price for the product, in the minimal quantity of the currency.
  class MessageContent::PaymentSuccessful < MessageContent
    attribute :invoice_message_id, TD::Types::Integer
    attribute :currency, TD::Types::String
    attribute :total_amount, TD::Types::Integer
  end
end
