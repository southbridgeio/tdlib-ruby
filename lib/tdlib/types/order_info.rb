module TD::Types
  # Order information.
  #
  # @attr name [String] Name of the user.
  # @attr phone_number [String] Phone number of the user.
  # @attr email_address [String] Email address of the user.
  # @attr shipping_address [TD::Types::Address, nil] Shipping address for this order; may be null.
  class OrderInfo < Base
    attribute :name, TD::Types::String
    attribute :phone_number, TD::Types::String
    attribute :email_address, TD::Types::String
    attribute :shipping_address, TD::Types::Address.optional.default(nil)
  end
end
