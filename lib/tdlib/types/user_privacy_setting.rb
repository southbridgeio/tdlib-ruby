module TD::Types
  # Describes available user privacy settings.
  class UserPrivacySetting < Base
    %w[
      show_status
      allow_chat_invites
      allow_calls
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/user_privacy_setting/#{type}"
    end
  end
end
