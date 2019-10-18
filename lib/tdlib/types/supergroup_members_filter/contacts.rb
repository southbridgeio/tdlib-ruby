module TD::Types
  # Returns contacts of the user, which are members of the supergroup or channel.
  #
  # @attr query [String] Query to search for.
  class SupergroupMembersFilter::Contacts < SupergroupMembersFilter
    attribute :query, TD::Types::String
  end
end
