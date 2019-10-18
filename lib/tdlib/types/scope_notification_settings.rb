module TD::Types
  # Contains information about notification settings for several chats.
  #
  # @attr mute_for [Integer] Time left before notifications will be unmuted, in seconds.
  # @attr sound [String] The name of an audio file to be used for notification sounds; only applies to iOS
  #   applications.
  # @attr show_preview [Boolean] True, if message content should be displayed in notifications.
  # @attr disable_pinned_message_notifications [Boolean] True, if notifications for incoming pinned messages will be
  #   created as for an ordinary unread message.
  # @attr disable_mention_notifications [Boolean] True, if notifications for messages with mentions will be created as
  #   for an ordinary unread message.
  class ScopeNotificationSettings < Base
    attribute :mute_for, TD::Types::Integer
    attribute :sound, TD::Types::String
    attribute :show_preview, TD::Types::Bool
    attribute :disable_pinned_message_notifications, TD::Types::Bool
    attribute :disable_mention_notifications, TD::Types::Bool
  end
end
