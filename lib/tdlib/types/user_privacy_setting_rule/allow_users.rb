module TD::Types
  # A rule to allow certain specified users to do something.
  #
  # @attr user_ids [Array<Integer>] The user identifiers, total number of users in all rules must not exceed 1000.
  class UserPrivacySettingRule::AllowUsers < UserPrivacySettingRule
    attribute :user_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
