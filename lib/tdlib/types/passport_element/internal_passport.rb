module TD::Types
  # A Telegram Passport element containing the user's internal passport.
  #
  # @attr internal_passport [TD::Types::IdentityDocument] Internal passport.
  class PassportElement::InternalPassport < PassportElement
    attribute :internal_passport, TD::Types::IdentityDocument
  end
end
