module TD::Types
  # A list of active notifications in a notification group has changed.
  #
  # @attr notification_group_id [Integer] Unique notification group identifier.
  # @attr type [TD::Types::NotificationGroupType] New type of the notification group.
  # @attr chat_id [Integer] Identifier of a chat to which all notifications in the group belong.
  # @attr notification_settings_chat_id [Integer] Chat identifier, which notification settings must be applied to the
  #   added notifications.
  # @attr is_silent [Boolean] True, if the notifications should be shown without sound.
  # @attr total_count [Integer] Total number of unread notifications in the group, can be bigger than number of active
  #   notifications.
  # @attr added_notifications [Array<TD::Types::Notification>] List of added group notifications, sorted by
  #   notification ID.
  # @attr removed_notification_ids [Array<Integer>] Identifiers of removed group notifications, sorted by notification
  #   ID.
  class Update::NotificationGroup < Update
    attribute :notification_group_id, TD::Types::Integer
    attribute :type, TD::Types::NotificationGroupType
    attribute :chat_id, TD::Types::Integer
    attribute :notification_settings_chat_id, TD::Types::Integer
    attribute :is_silent, TD::Types::Bool
    attribute :total_count, TD::Types::Integer
    attribute :added_notifications, TD::Types::Array.of(TD::Types::Notification)
    attribute :removed_notification_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
