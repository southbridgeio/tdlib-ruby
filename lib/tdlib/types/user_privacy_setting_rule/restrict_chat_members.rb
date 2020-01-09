module TD::Types
  # A rule to restrict all members of specified basic groups and supergroups from doing something.
  #
  # @attr chat_ids [Array<Integer>] The chat identifiers, total number of chats in all rules must not exceed 20.
  class UserPrivacySettingRule::RestrictChatMembers < UserPrivacySettingRule
    attribute :chat_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
