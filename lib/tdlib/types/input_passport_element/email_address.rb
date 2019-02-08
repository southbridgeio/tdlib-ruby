module TD::Types
  # A Telegram Passport element to be saved containing the user's email address.
  #
  # @attr email_address [String] The email address to be saved.
  class InputPassportElement::EmailAddress < InputPassportElement
    attribute :email_address, TD::Types::String
  end
end
