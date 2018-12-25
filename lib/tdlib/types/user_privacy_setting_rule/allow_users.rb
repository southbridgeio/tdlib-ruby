module TD::Types
  # A rule to allow certain specified users to do something.
  #
  # @attr user_ids [Array<Integer>] The user identifiers.
  class UserPrivacySettingRule::AllowUsers < UserPrivacySettingRule
    attribute :user_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
