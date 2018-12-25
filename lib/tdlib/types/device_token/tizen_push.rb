module TD::Types
  # A token for Tizen Push Service.
  #
  # @attr reg_id [String, nil] Push service registration identifier; may be empty to de-register a device.
  class DeviceToken::TizenPush < DeviceToken
    attribute :reg_id, TD::Types::String.optional.default(nil)
  end
end
