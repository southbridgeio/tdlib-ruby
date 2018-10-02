module TD::Types
  # Some privacy setting rules have been changed.
  #
  # @attr setting [UserPrivacySetting] The privacy setting.
  # @attr rules [UserPrivacySettingRules] New privacy rules.
  class Update::UserPrivacySettingRules < Update
    attribute :setting, TD::Types::UserPrivacySetting
    attribute :rules, TD::Types::UserPrivacySettingRules
  end
end
