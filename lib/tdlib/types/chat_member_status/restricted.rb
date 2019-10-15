module TD::Types
  # The user is under certain restrictions in the chat.
  # Not supported in basic groups and channels.
  #
  # @attr is_member [Boolean] True, if the user is a member of the chat.
  # @attr restricted_until_date [Integer] Point in time (Unix timestamp) when restrictions will be lifted from the
  #   user; 0 if never.
  #   If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is
  #   considered to be restricted forever.
  # @attr permissions [TD::Types::ChatPermissions] User permissions in the chat.
  class ChatMemberStatus::Restricted < ChatMemberStatus
    attribute :is_member, TD::Types::Bool
    attribute :restricted_until_date, TD::Types::Integer
    attribute :permissions, TD::Types::ChatPermissions
  end
end
