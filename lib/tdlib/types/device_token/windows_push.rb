module TD::Types
  # A token for Windows Push Notification Services.
  #
  # @attr access_token [String, nil] The access token that will be used to send notifications; may be empty to
  #   de-register a device.
  class DeviceToken::WindowsPush < DeviceToken
    attribute :access_token, TD::Types::String.optional.default(nil)
  end
end
