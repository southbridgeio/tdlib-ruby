module TD::Types
  # A new incoming shipping query; for bots only.
  # Only for invoices with flexible price.
  #
  # @attr id [Integer] Unique query identifier.
  # @attr sender_user_id [Integer] Identifier of the user who sent the query.
  # @attr invoice_payload [String] Invoice payload.
  # @attr shipping_address [TD::Types::Address] User shipping address.
  class Update::NewShippingQuery < Update
    attribute :id, TD::Types::Integer
    attribute :sender_user_id, TD::Types::Integer
    attribute :invoice_payload, TD::Types::String
    attribute :shipping_address, TD::Types::Address
  end
end
