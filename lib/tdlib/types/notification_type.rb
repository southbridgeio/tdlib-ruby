module TD::Types
  # Contains detailed information about a notification.
  class NotificationType < Base
    %w[
      new_message
      new_secret_chat
      new_call
      new_push_message
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/notification_type/#{type}"
    end
  end
end
