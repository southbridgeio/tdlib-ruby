module TD::Types
  # A Telegram Passport element to be saved containing the user's passport registration.
  #
  # @attr passport_registration [TD::Types::InputPersonalDocument] The passport registration page to be saved.
  class InputPassportElement::PassportRegistration < InputPassportElement
    attribute :passport_registration, TD::Types::InputPersonalDocument
  end
end
