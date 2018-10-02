module TD::Types
  # Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).
  #
  # @attr id [Integer] Group identifier.
  # @attr member_count [Integer] Number of members in the group.
  # @attr status [ChatMemberStatus] Status of the current user in the group.
  # @attr everyone_is_administrator [Boolean] True, if all members have been granted administrator rights in the group.
  # @attr is_active [Boolean] True, if the group is active.
  # @attr upgraded_to_supergroup_id [Integer] Identifier of the supergroup to which this group was upgraded; 0 if none.
  class BasicGroup < Base
    attribute :id, TD::Types::Integer
    attribute :member_count, TD::Types::Integer
    attribute :status, TD::Types::ChatMemberStatus
    attribute :everyone_is_administrator, TD::Types::Bool
    attribute :is_active, TD::Types::Bool
    attribute :upgraded_to_supergroup_id, TD::Types::Integer
  end
end
