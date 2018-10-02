module TD::Types
  # A Telegram Passport element to be saved containing the user's phone number.
  #
  # @attr phone_number [String] The phone number to be saved.
  class InputPassportElement::PhoneNumber < InputPassportElement
    attribute :phone_number, TD::Types::String
  end
end
