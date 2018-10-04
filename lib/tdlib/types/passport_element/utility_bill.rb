module TD::Types
  # A Telegram Passport element containing the user's utility bill.
  #
  # @attr utility_bill [TD::Types::PersonalDocument] Utility bill.
  class PassportElement::UtilityBill < PassportElement
    attribute :utility_bill, TD::Types::PersonalDocument
  end
end
