module TD::Types
  # A Telegram Passport element containing the user's driver license.
  #
  # @attr driver_license [TD::Types::IdentityDocument] Driver license.
  class PassportElement::DriverLicense < PassportElement
    attribute :driver_license, TD::Types::IdentityDocument
  end
end
