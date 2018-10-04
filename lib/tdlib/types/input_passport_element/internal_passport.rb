module TD::Types
  # A Telegram Passport element to be saved containing the user's internal passport.
  #
  # @attr internal_passport [TD::Types::InputIdentityDocument] The internal passport to be saved.
  class InputPassportElement::InternalPassport < InputPassportElement
    attribute :internal_passport, TD::Types::InputIdentityDocument
  end
end
