module TD::Types
  # A Telegram Passport element to be saved containing the user's rental agreement.
  #
  # @attr rental_agreement [TD::Types::InputPersonalDocument] The rental agreement to be saved.
  class InputPassportElement::RentalAgreement < InputPassportElement
    attribute :rental_agreement, TD::Types::InputPersonalDocument
  end
end
