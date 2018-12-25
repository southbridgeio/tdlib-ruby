module TD::Types
  # Some data from basicGroupFullInfo has been changed.
  #
  # @attr basic_group_id [Integer] Identifier of a basic group.
  # @attr basic_group_full_info [TD::Types::BasicGroupFullInfo] New full information about the group.
  class Update::BasicGroupFullInfo < Update
    attribute :basic_group_id, TD::Types::Integer
    attribute :basic_group_full_info, TD::Types::BasicGroupFullInfo
  end
end
