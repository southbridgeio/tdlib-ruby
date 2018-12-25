module TD::Types
  # Contains a temporary identifier of validated order information, which is stored for one hour.
  # Also contains the available shipping options.
  #
  # @attr order_info_id [String] Temporary identifier of the order information.
  # @attr shipping_options [Array<TD::Types::ShippingOption>] Available shipping options.
  class ValidatedOrderInfo < Base
    attribute :order_info_id, TD::Types::String
    attribute :shipping_options, TD::Types::Array.of(TD::Types::ShippingOption)
  end
end
