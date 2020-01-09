module TD::Types
  # New chat members were invited to a group.
  #
  # @attr member_name [String] Name of the added member.
  # @attr is_current_user [Boolean] True, if the current user was added to the group.
  # @attr is_returned [Boolean] True, if the user has returned to the group themself.
  class PushMessageContent::ChatAddMembers < PushMessageContent
    attribute :member_name, TD::Types::String
    attribute :is_current_user, TD::Types::Bool
    attribute :is_returned, TD::Types::Bool
  end
end
