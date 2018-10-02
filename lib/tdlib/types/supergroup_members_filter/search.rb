module TD::Types
  # Used to search for supergroup or channel members via a (string) query.
  #
  # @attr query [String] Query to search for.
  class SupergroupMembersFilter::Search < SupergroupMembersFilter
    attribute :query, TD::Types::String
  end
end
