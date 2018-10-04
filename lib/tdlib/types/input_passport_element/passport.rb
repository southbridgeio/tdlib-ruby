module TD::Types
  # A Telegram Passport element to be saved containing the user's passport.
  #
  # @attr passport [TD::Types::InputIdentityDocument] The passport to be saved.
  class InputPassportElement::Passport < InputPassportElement
    attribute :passport, TD::Types::InputIdentityDocument
  end
end
