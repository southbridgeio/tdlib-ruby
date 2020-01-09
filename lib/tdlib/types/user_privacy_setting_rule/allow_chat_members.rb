module TD::Types
  # A rule to allow all members of certain specified basic groups and supergroups to doing something.
  #
  # @attr chat_ids [Array<Integer>] The chat identifiers, total number of chats in all rules must not exceed 20.
  class UserPrivacySettingRule::AllowChatMembers < UserPrivacySettingRule
    attribute :chat_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
