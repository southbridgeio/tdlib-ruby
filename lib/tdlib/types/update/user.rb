module TD::Types
  # Some data of a user has changed.
  # This update is guaranteed to come before the user identifier is returned to the client.
  #
  # @attr user [User] New data about the user.
  class Update::User < Update
    attribute :user, TD::Types::User
  end
end
