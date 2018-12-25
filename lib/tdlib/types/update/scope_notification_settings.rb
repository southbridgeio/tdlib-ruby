module TD::Types
  # Notification settings for some type of chats were updated.
  #
  # @attr scope [TD::Types::NotificationSettingsScope] Types of chats for which notification settings were updated.
  # @attr notification_settings [TD::Types::ScopeNotificationSettings] The new notification settings.
  class Update::ScopeNotificationSettings < Update
    attribute :scope, TD::Types::NotificationSettingsScope
    attribute :notification_settings, TD::Types::ScopeNotificationSettings
  end
end
