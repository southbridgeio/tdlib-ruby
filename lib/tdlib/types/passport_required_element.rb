module TD::Types
  # Contains a description of the required Telegram Passport element that was requested by a service.
  #
  # @attr suitable_elements [Array<TD::Types::PassportSuitableElement>] List of Telegram Passport elements any of which
  #   is enough to provide.
  class PassportRequiredElement < Base
    attribute :suitable_elements, TD::Types::Array.of(TD::Types::PassportSuitableElement)
  end
end
