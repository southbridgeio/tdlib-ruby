module TD::Types
  # Product invoice.
  #
  # @attr currency [String] ISO 4217 currency code.
  # @attr price_parts [Array<TD::Types::LabeledPricePart>] A list of objects used to calculate the total price of the
  #   product.
  # @attr is_test [Boolean] True, if the payment is a test payment.
  # @attr need_name [Boolean] True, if the user's name is needed for payment.
  # @attr need_phone_number [Boolean] True, if the user's phone number is needed for payment.
  # @attr need_email_address [Boolean] True, if the user's email address is needed for payment.
  # @attr need_shipping_address [Boolean] True, if the user's shipping address is needed for payment.
  # @attr send_phone_number_to_provider [Boolean] True, if the user's phone number will be sent to the provider.
  # @attr send_email_address_to_provider [Boolean] True, if the user's email address will be sent to the provider.
  # @attr is_flexible [Boolean] True, if the total price depends on the shipping method.
  class Invoice < Base
    attribute :currency, TD::Types::String
    attribute :price_parts, TD::Types::Array.of(TD::Types::LabeledPricePart)
    attribute :is_test, TD::Types::Bool
    attribute :need_name, TD::Types::Bool
    attribute :need_phone_number, TD::Types::Bool
    attribute :need_email_address, TD::Types::Bool
    attribute :need_shipping_address, TD::Types::Bool
    attribute :send_phone_number_to_provider, TD::Types::Bool
    attribute :send_email_address_to_provider, TD::Types::Bool
    attribute :is_flexible, TD::Types::Bool
  end
end
