module TD::Types
  # A token for Simple Push API for Firefox OS.
  #
  # @attr endpoint [String, nil] Absolute URL exposed by the push service where the application server can send push
  #   messages; may be empty to de-register a device.
  class DeviceToken::SimplePush < DeviceToken
    attribute :endpoint, TD::Types::String.optional.default(nil)
  end
end
