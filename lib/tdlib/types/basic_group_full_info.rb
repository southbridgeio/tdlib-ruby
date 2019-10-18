module TD::Types
  # Contains full information about a basic group.
  #
  # @attr description [String] Group description.
  # @attr creator_user_id [Integer] User identifier of the creator of the group; 0 if unknown.
  # @attr members [Array<TD::Types::ChatMember>] Group members.
  # @attr invite_link [String] Invite link for this group; available only for the group creator and only after it has
  #   been generated at least once.
  class BasicGroupFullInfo < Base
    attribute :description, TD::Types::String
    attribute :creator_user_id, TD::Types::Integer
    attribute :members, TD::Types::Array.of(TD::Types::ChatMember)
    attribute :invite_link, TD::Types::String
  end
end
