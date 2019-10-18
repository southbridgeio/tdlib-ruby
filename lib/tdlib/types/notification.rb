module TD::Types
  # Contains information about a notification.
  #
  # @attr id [Integer] Unique persistent identifier of this notification.
  # @attr date [Integer] Notification date.
  # @attr type [TD::Types::NotificationType] Notification type.
  class Notification < Base
    attribute :id, TD::Types::Integer
    attribute :date, TD::Types::Integer
    attribute :type, TD::Types::NotificationType
  end
end
