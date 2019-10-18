module TD::Types
  # Describes a group of notifications.
  #
  # @attr id [Integer] Unique persistent auto-incremented from 1 identifier of the notification group.
  # @attr type [TD::Types::NotificationGroupType] Type of the group.
  # @attr chat_id [Integer] Identifier of a chat to which all notifications in the group belong.
  # @attr total_count [Integer] Total number of active notifications in the group.
  # @attr notifications [Array<TD::Types::Notification>] The list of active notifications.
  class NotificationGroup < Base
    attribute :id, TD::Types::Integer
    attribute :type, TD::Types::NotificationGroupType
    attribute :chat_id, TD::Types::Integer
    attribute :total_count, TD::Types::Integer
    attribute :notifications, TD::Types::Array.of(TD::Types::Notification)
  end
end
