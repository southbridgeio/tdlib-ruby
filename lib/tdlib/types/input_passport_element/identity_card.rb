module TD::Types
  # A Telegram Passport element to be saved containing the user's identity card.
  #
  # @attr identity_card [TD::Types::InputIdentityDocument] The identity card to be saved.
  class InputPassportElement::IdentityCard < InputPassportElement
    attribute :identity_card, TD::Types::InputIdentityDocument
  end
end
