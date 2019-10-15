module TD::Types
  # A notification was changed.
  #
  # @attr notification_group_id [Integer] Unique notification group identifier.
  # @attr notification [TD::Types::Notification] Changed notification.
  class Update::Notification < Update
    attribute :notification_group_id, TD::Types::Integer
    attribute :notification, TD::Types::Notification
  end
end
