module TD::Types
  # A Telegram Passport element to be saved containing the user's driver license.
  #
  # @attr driver_license [TD::Types::InputIdentityDocument] The driver license to be saved.
  class InputPassportElement::DriverLicense < InputPassportElement
    attribute :driver_license, TD::Types::InputIdentityDocument
  end
end
