module TD::Types
  # A list of privacy rules.
  # Rules are matched in the specified order.
  # The first matched rule defines the privacy setting for a given user.
  # If no rule matches, the action is not allowed.
  #
  # @attr rules [Array<TD::Types::UserPrivacySettingRule>] A list of rules.
  class UserPrivacySettingRules < Base
    attribute :rules, TD::Types::Array.of(TD::Types::UserPrivacySettingRule)
  end
end
