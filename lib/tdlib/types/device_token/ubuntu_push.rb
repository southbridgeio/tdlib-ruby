module TD::Types
  # A token for Ubuntu Push Client service.
  #
  # @attr token [String, nil] Token; may be empty to de-register a device.
  class DeviceToken::UbuntuPush < DeviceToken
    attribute :token, TD::Types::String.optional.default(nil)
  end
end
