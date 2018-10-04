module TD::Types
  # A Telegram Passport element containing the user's rental agreement.
  #
  # @attr rental_agreement [TD::Types::PersonalDocument] Rental agreement.
  class PassportElement::RentalAgreement < PassportElement
    attribute :rental_agreement, TD::Types::PersonalDocument
  end
end
