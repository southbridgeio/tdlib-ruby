module TD::Types
  # A Telegram Passport element containing the user's address.
  #
  # @attr address [Address] Address.
  class PassportElement::Address < PassportElement
    attribute :address, TD::Types::Address
  end
end
