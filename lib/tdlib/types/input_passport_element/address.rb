module TD::Types
  # A Telegram Passport element to be saved containing the user's address.
  #
  # @attr address [TD::Types::Address] The address to be saved.
  class InputPassportElement::Address < InputPassportElement
    attribute :address, TD::Types::Address
  end
end
