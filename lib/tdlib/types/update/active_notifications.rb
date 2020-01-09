module TD::Types
  # Contains active notifications that was shown on previous application launches.
  # This update is sent only if the message database is used.
  # In that case it comes once before any updateNotification and updateNotificationGroup update.
  #
  # @attr groups [Array<TD::Types::NotificationGroup>] Lists of active notification groups.
  class Update::ActiveNotifications < Update
    attribute :groups, TD::Types::Array.of(TD::Types::NotificationGroup)
  end
end
