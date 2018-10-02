module TD::Types
  # Returns restricted supergroup members; can be used only by administrators.
  #
  # @attr query [String] Query to search for.
  class SupergroupMembersFilter::Restricted < SupergroupMembersFilter
    attribute :query, TD::Types::String
  end
end
