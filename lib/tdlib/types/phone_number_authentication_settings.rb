module TD::Types
  # Contains settings for the authentication of the user's phone number.
  #
  # @attr allow_flash_call [Boolean] Pass true if the authentication code may be sent via flash call to the specified
  #   phone number.
  # @attr is_current_phone_number [Boolean] Pass true if the authenticated phone number is used on the current device.
  # @attr allow_sms_retriever_api [Boolean] For official applications only.
  #   True, if the app can use Android SMS Retriever API (requires Google Play Services >= 10.2) to automatically
  #   receive the authentication code from the SMS.
  #   See https://developers.google.com/identity/sms-retriever/ for more details.
  class PhoneNumberAuthenticationSettings < Base
    attribute :allow_flash_call, TD::Types::Bool
    attribute :is_current_phone_number, TD::Types::Bool
    attribute :allow_sms_retriever_api, TD::Types::Bool
  end
end
