module TD::Types
  # Describes the types of chats to which notification settings are applied.
  class NotificationSettingsScope < Base
    %w[
      private_chats
      group_chats
      channel_chats
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/notification_settings_scope/#{type}"
    end
  end
end
