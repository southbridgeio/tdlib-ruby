module TD::Types
  # A new chat member was invited.
  #
  # @attr user_id [Integer] New member user identifier.
  # @attr status [TD::Types::ChatMemberStatus] New member status.
  class ChatEventAction::MemberInvited < ChatEventAction
    attribute :user_id, TD::Types::Integer
    attribute :status, TD::Types::ChatMemberStatus
  end
end
