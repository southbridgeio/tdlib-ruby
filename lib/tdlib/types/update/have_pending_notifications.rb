module TD::Types
  # Describes whether there are some pending notification updates.
  # Can be used to prevent application from killing, while there are some pending notifications.
  #
  # @attr have_delayed_notifications [Boolean] True, if there are some delayed notification updates, which will be sent
  #   soon.
  # @attr have_unreceived_notifications [Boolean] True, if there can be some yet unreceived notifications, which are
  #   being fetched from the server.
  class Update::HavePendingNotifications < Update
    attribute :have_delayed_notifications, TD::Types::Bool
    attribute :have_unreceived_notifications, TD::Types::Bool
  end
end
