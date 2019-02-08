module TD::Types
  # Notification settings for a chat were changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr notification_settings [TD::Types::ChatNotificationSettings] The new notification settings.
  class Update::ChatNotificationSettings < Update
    attribute :chat_id, TD::Types::Integer
    attribute :notification_settings, TD::Types::ChatNotificationSettings
  end
end
