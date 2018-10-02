module TD::Types
  # A URL linking to a user.
  #
  # @attr user_id [Integer] Identifier of the user.
  class TMeUrlType::User < TMeUrlType
    attribute :user_id, TD::Types::Integer
  end
end
