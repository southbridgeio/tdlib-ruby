module TD::Types
  # Some privacy setting rules have been changed.
  #
  # @attr setting [TD::Types::UserPrivacySetting] The privacy setting.
  # @attr rules [TD::Types::UserPrivacySettingRules] New privacy rules.
  class Update::UserPrivacySettingRules < Update
    attribute :setting, TD::Types::UserPrivacySetting
    attribute :rules, TD::Types::UserPrivacySettingRules
  end
end
