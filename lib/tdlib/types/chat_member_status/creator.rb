module TD::Types
  # The user is the owner of a chat and has all the administrator privileges.
  #
  # @attr custom_title [String] A custom title of the owner; 0-16 characters without emojis; applicable to supergroups
  #   only.
  # @attr is_member [Boolean] True, if the user is a member of the chat.
  class ChatMemberStatus::Creator < ChatMemberStatus
    attribute :custom_title, TD::Types::String
    attribute :is_member, TD::Types::Bool
  end
end
