module TD::Types
  # A Telegram Passport element containing the user's passport registration pages.
  #
  # @attr passport_registration [TD::Types::PersonalDocument] Passport registration pages.
  class PassportElement::PassportRegistration < PassportElement
    attribute :passport_registration, TD::Types::PersonalDocument
  end
end
