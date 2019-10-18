module TD::Types
  # The chat permissions was changed.
  #
  # @attr old_permissions [TD::Types::ChatPermissions] Previous chat permissions.
  # @attr new_permissions [TD::Types::ChatPermissions] New chat permissions.
  class ChatEventAction::PermissionsChanged < ChatEventAction
    attribute :old_permissions, TD::Types::ChatPermissions
    attribute :new_permissions, TD::Types::ChatPermissions
  end
end
