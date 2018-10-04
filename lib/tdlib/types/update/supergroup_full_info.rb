module TD::Types
  # Some data from supergroupFullInfo has been changed.
  #
  # @attr supergroup_id [Integer] Identifier of the supergroup or channel.
  # @attr supergroup_full_info [TD::Types::SupergroupFullInfo] New full information about the supergroup.
  class Update::SupergroupFullInfo < Update
    attribute :supergroup_id, TD::Types::Integer
    attribute :supergroup_full_info, TD::Types::SupergroupFullInfo
  end
end
