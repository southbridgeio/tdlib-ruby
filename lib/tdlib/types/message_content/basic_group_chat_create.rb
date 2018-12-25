module TD::Types
  # A newly created basic group.
  #
  # @attr title [String] Title of the basic group.
  # @attr member_user_ids [Array<Integer>] User identifiers of members in the basic group.
  class MessageContent::BasicGroupChatCreate < MessageContent
    attribute :title, TD::Types::String
    attribute :member_user_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
