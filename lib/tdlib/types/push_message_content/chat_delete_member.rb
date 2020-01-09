module TD::Types
  # A chat member was deleted.
  #
  # @attr member_name [String] Name of the deleted member.
  # @attr is_current_user [Boolean] True, if the current user was deleted from the group.
  # @attr is_left [Boolean] True, if the user has left the group themself.
  class PushMessageContent::ChatDeleteMember < PushMessageContent
    attribute :member_name, TD::Types::String
    attribute :is_current_user, TD::Types::Bool
    attribute :is_left, TD::Types::Bool
  end
end
