module TD::Types
  # A basic group was upgraded to a supergroup and was deactivated as the result.
  #
  # @attr supergroup_id [Integer] Identifier of the supergroup to which the basic group was upgraded.
  class MessageContent::ChatUpgradeTo < MessageContent
    attribute :supergroup_id, TD::Types::Integer
  end
end
