module TD::Types
  # A rule to restrict all specified users from doing something.
  #
  # @attr user_ids [Array<Integer>] The user identifiers, total number of users in all rules must not exceed 1000.
  class UserPrivacySettingRule::RestrictUsers < UserPrivacySettingRule
    attribute :user_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
