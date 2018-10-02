module TD::Types
  # An ordinary chat with a user.
  #
  # @attr user_id [Integer] User identifier.
  class ChatType::Private < ChatType
    attribute :user_id, TD::Types::Integer
  end
end
