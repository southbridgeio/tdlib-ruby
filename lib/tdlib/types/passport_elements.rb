module TD::Types
  # Contains information about saved Telegram Passport elements.
  #
  # @attr elements [Array<TD::Types::PassportElement>] Telegram Passport elements.
  class PassportElements < Base
    attribute :elements, TD::Types::Array.of(TD::Types::PassportElement)
  end
end
