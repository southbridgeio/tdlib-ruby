module TD::Types
  # A Telegram Passport element to be saved containing the user's bank statement.
  #
  # @attr bank_statement [TD::Types::InputPersonalDocument] The bank statement to be saved.
  class InputPassportElement::BankStatement < InputPassportElement
    attribute :bank_statement, TD::Types::InputPersonalDocument
  end
end
