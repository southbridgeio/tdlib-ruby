module TD::Types
  # New chat members were added.
  #
  # @attr member_user_ids [Array<Integer>] User identifiers of the new members.
  class MessageContent::ChatAddMembers < MessageContent
    attribute :member_user_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
