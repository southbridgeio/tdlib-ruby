module TD::Types
  # A token for Google Cloud Messaging.
  #
  # @attr token [String, nil] Device registration token; may be empty to de-register a device.
  class DeviceToken::GoogleCloudMessaging < DeviceToken
    attribute :token, TD::Types::String.optional.default(nil)
  end
end
