module TD::Types
  # Some data of a basic group has changed.
  # This update is guaranteed to come before the basic group identifier is returned to the client.
  #
  # @attr basic_group [BasicGroup] New data about the group.
  class Update::BasicGroup < Update
    attribute :basic_group, TD::Types::BasicGroup
  end
end
