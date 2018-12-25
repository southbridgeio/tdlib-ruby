module TD::Types
  # The user is the creator of a chat and has all the administrator privileges.
  #
  # @attr is_member [Boolean] True, if the user is a member of the chat.
  class ChatMemberStatus::Creator < ChatMemberStatus
    attribute :is_member, TD::Types::Bool
  end
end
