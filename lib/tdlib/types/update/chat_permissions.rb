module TD::Types
  # Chat permissions was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr permissions [TD::Types::ChatPermissions] The new chat permissions.
  class Update::ChatPermissions < Update
    attribute :chat_id, TD::Types::Integer
    attribute :permissions, TD::Types::ChatPermissions
  end
end
