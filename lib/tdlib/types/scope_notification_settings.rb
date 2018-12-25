module TD::Types
  # Contains information about notification settings for several chats.
  #
  # @attr mute_for [Integer] Time left before notifications will be unmuted, in seconds.
  # @attr sound [String] The name of an audio file to be used for notification sounds; only applies to iOS
  #   applications.
  # @attr show_preview [Boolean] True, if message content should be displayed in notifications.
  class ScopeNotificationSettings < Base
    attribute :mute_for, TD::Types::Integer
    attribute :sound, TD::Types::String
    attribute :show_preview, TD::Types::Bool
  end
end
