module TD::Types
  # A token for Apple Push Notification service VoIP notifications.
  #
  # @attr device_token [String, nil] Device token; may be empty to de-register a device.
  # @attr is_app_sandbox [Boolean] True, if App Sandbox is enabled.
  # @attr encrypt [Boolean] True, if push notifications should be additionally encrypted.
  class DeviceToken::ApplePushVoIP < DeviceToken
    attribute :device_token, TD::Types::String.optional.default(nil)
    attribute :is_app_sandbox, TD::Types::Bool
    attribute :encrypt, TD::Types::Bool
  end
end
