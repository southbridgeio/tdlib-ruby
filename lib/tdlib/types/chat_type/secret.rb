module TD::Types
  # A secret chat with a user.
  #
  # @attr secret_chat_id [Integer] Secret chat identifier.
  # @attr user_id [Integer] User identifier of the secret chat peer.
  class ChatType::Secret < ChatType
    attribute :secret_chat_id, TD::Types::Integer
    attribute :user_id, TD::Types::Integer
  end
end
