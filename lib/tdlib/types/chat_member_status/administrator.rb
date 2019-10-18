module TD::Types
  # The user is a member of a chat and has some additional privileges.
  # In basic groups, administrators can edit and delete messages sent by others, add new members, and ban unprivileged
  #   members.
  # In supergroups and channels, there are more detailed options for administrator privileges.
  #
  # @attr can_be_edited [Boolean] True, if the current user can edit the administrator privileges for the called user.
  # @attr can_change_info [Boolean] True, if the administrator can change the chat title, photo, and other settings.
  # @attr can_post_messages [Boolean] True, if the administrator can create channel posts; applicable to channels only.
  # @attr can_edit_messages [Boolean] True, if the administrator can edit messages of other users and pin messages;
  #   applicable to channels only.
  # @attr can_delete_messages [Boolean] True, if the administrator can delete messages of other users.
  # @attr can_invite_users [Boolean] True, if the administrator can invite new users to the chat.
  # @attr can_restrict_members [Boolean] True, if the administrator can restrict, ban, or unban chat members.
  # @attr can_pin_messages [Boolean] True, if the administrator can pin messages; applicable to groups only.
  # @attr can_promote_members [Boolean] True, if the administrator can add new administrators with a subset of their
  #   own privileges or demote administrators that were directly or indirectly promoted by him.
  class ChatMemberStatus::Administrator < ChatMemberStatus
    attribute :can_be_edited, TD::Types::Bool
    attribute :can_change_info, TD::Types::Bool
    attribute :can_post_messages, TD::Types::Bool
    attribute :can_edit_messages, TD::Types::Bool
    attribute :can_delete_messages, TD::Types::Bool
    attribute :can_invite_users, TD::Types::Bool
    attribute :can_restrict_members, TD::Types::Bool
    attribute :can_pin_messages, TD::Types::Bool
    attribute :can_promote_members, TD::Types::Bool
  end
end
