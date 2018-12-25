module TD::Types
  # A Telegram Passport element containing the user's bank statement.
  #
  # @attr bank_statement [TD::Types::PersonalDocument] Bank statement.
  class PassportElement::BankStatement < PassportElement
    attribute :bank_statement, TD::Types::PersonalDocument
  end
end
