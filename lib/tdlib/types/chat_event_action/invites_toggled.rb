module TD::Types
  # The anyone_can_invite setting of a supergroup chat was toggled.
  #
  # @attr anyone_can_invite [Boolean] New value of anyone_can_invite.
  class ChatEventAction::InvitesToggled < ChatEventAction
    attribute :anyone_can_invite, TD::Types::Bool
  end
end
