module TD::Types
  # A Telegram Passport element containing the user's identity card.
  #
  # @attr identity_card [TD::Types::IdentityDocument] Identity card.
  class PassportElement::IdentityCard < PassportElement
    attribute :identity_card, TD::Types::IdentityDocument
  end
end
