module TD::Types
  # Represents a single rule for managing privacy settings.
  class UserPrivacySettingRule < Base
    %w[
      allow_all
      allow_contacts
      allow_users
      restrict_all
      restrict_contacts
      restrict_users
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/user_privacy_setting_rule/#{type}"
    end
  end
end
