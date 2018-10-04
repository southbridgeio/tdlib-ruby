module TD::Types
  # A Telegram Passport element containing the user's temporary registration.
  #
  # @attr temporary_registration [TD::Types::PersonalDocument] Temporary registration.
  class PassportElement::TemporaryRegistration < PassportElement
    attribute :temporary_registration, TD::Types::PersonalDocument
  end
end
