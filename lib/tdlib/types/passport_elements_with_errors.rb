module TD::Types
  # Contains information about a Telegram Passport elements and corresponding errors.
  #
  # @attr elements [Array<TD::Types::PassportElement>] Telegram Passport elements.
  # @attr errors [Array<TD::Types::PassportElementError>] Errors in the elements that are already available.
  class PassportElementsWithErrors < Base
    attribute :elements, TD::Types::Array.of(TD::Types::PassportElement)
    attribute :errors, TD::Types::Array.of(TD::Types::PassportElementError)
  end
end
