module TD::Types
  # A supergroup has been created from a basic group.
  #
  # @attr title [String] Title of the newly created supergroup.
  # @attr basic_group_id [Integer] The identifier of the original basic group.
  class MessageContent::ChatUpgradeFrom < MessageContent
    attribute :title, TD::Types::String
    attribute :basic_group_id, TD::Types::Integer
  end
end
