module TD::Types
  # The can_invite_users permission of a supergroup chat was toggled.
  #
  # @attr can_invite_users [Boolean] New value of can_invite_users permission.
  class ChatEventAction::InvitesToggled < ChatEventAction
    attribute :can_invite_users, TD::Types::Bool
  end
end
