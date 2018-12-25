module TD::Types
  # A Telegram Passport element to be saved containing the user's temporary registration.
  #
  # @attr temporary_registration [TD::Types::InputPersonalDocument] The temporary registration document to be saved.
  class InputPassportElement::TemporaryRegistration < InputPassportElement
    attribute :temporary_registration, TD::Types::InputPersonalDocument
  end
end
