module TD::Types
  # Some data of a supergroup or a channel has changed.
  # This update is guaranteed to come before the supergroup identifier is returned to the client.
  #
  # @attr supergroup [TD::Types::Supergroup] New data about the supergroup.
  class Update::Supergroup < Update
    attribute :supergroup, TD::Types::Supergroup
  end
end
