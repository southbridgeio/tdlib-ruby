module TD::Types
  # A Telegram Passport element containing the user's email address.
  #
  # @attr email_address [String] Email address.
  class PassportElement::EmailAddress < PassportElement
    attribute :email_address, TD::Types::String
  end
end
