module TD::Types
  # Contains information about notification settings for a chat.
  #
  # @attr use_default_mute_for [Boolean] If true, mute_for is ignored and the value for the relevant type of chat is
  #   used instead.
  # @attr mute_for [Integer] Time left before notifications will be unmuted, in seconds.
  # @attr use_default_sound [Boolean] If true, sound is ignored and the value for the relevant type of chat is used
  #   instead.
  # @attr sound [String] The name of an audio file to be used for notification sounds; only applies to iOS
  #   applications.
  # @attr use_default_show_preview [Boolean] If true, show_preview is ignored and the value for the relevant type of
  #   chat is used instead.
  # @attr show_preview [Boolean] True, if message content should be displayed in notifications.
  # @attr use_default_disable_pinned_message_notifications [Boolean] If true, disable_pinned_message_notifications is
  #   ignored and the value for the relevant type of chat is used instead.
  # @attr disable_pinned_message_notifications [Boolean] If true, notifications for incoming pinned messages will be
  #   created as for an ordinary unread message.
  # @attr use_default_disable_mention_notifications [Boolean] If true, disable_mention_notifications is ignored and the
  #   value for the relevant type of chat is used instead.
  # @attr disable_mention_notifications [Boolean] If true, notifications for messages with mentions will be created as
  #   for an ordinary unread message.
  class ChatNotificationSettings < Base
    attribute :use_default_mute_for, TD::Types::Bool
    attribute :mute_for, TD::Types::Integer
    attribute :use_default_sound, TD::Types::Bool
    attribute :sound, TD::Types::String
    attribute :use_default_show_preview, TD::Types::Bool
    attribute :show_preview, TD::Types::Bool
    attribute :use_default_disable_pinned_message_notifications, TD::Types::Bool
    attribute :disable_pinned_message_notifications, TD::Types::Bool
    attribute :use_default_disable_mention_notifications, TD::Types::Bool
    attribute :disable_mention_notifications, TD::Types::Bool
  end
end
