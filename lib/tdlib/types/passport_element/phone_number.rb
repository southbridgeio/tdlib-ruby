module TD::Types
  # A Telegram Passport element containing the user's phone number.
  #
  # @attr phone_number [String] Phone number.
  class PassportElement::PhoneNumber < PassportElement
    attribute :phone_number, TD::Types::String
  end
end
