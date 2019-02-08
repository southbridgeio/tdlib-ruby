module TD::Types
  # A Telegram Passport element to be saved containing the user's utility bill.
  #
  # @attr utility_bill [TD::Types::InputPersonalDocument] The utility bill to be saved.
  class InputPassportElement::UtilityBill < InputPassportElement
    attribute :utility_bill, TD::Types::InputPersonalDocument
  end
end
