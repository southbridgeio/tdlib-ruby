module TD::Types
  # A token for Microsoft Push Notification Service VoIP channel.
  #
  # @attr channel_uri [String, nil] Push notification channel URI; may be empty to de-register a device.
  class DeviceToken::MicrosoftPushVoIP < DeviceToken
    attribute :channel_uri, TD::Types::String.optional.default(nil)
  end
end
