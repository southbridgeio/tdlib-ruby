module TD::Types
  # Returns users banned from the supergroup or channel; can be used only by administrators.
  #
  # @attr query [String] Query to search for.
  class SupergroupMembersFilter::Banned < SupergroupMembersFilter
    attribute :query, TD::Types::String
  end
end
