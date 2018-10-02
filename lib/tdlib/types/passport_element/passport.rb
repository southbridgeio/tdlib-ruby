module TD::Types
  # A Telegram Passport element containing the user's passport.
  #
  # @attr passport [IdentityDocument] Passport.
  class PassportElement::Passport < PassportElement
    attribute :passport, TD::Types::IdentityDocument
  end
end
