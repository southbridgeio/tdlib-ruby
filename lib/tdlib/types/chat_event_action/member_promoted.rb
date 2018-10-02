module TD::Types
  # A chat member has gained/lost administrator status, or the list of their administrator privileges has changed.
  #
  # @attr user_id [Integer] Chat member user identifier.
  # @attr old_status [ChatMemberStatus] Previous status of the chat member.
  # @attr new_status [ChatMemberStatus] New status of the chat member.
  class ChatEventAction::MemberPromoted < ChatEventAction
    attribute :user_id, TD::Types::Integer
    attribute :old_status, TD::Types::ChatMemberStatus
    attribute :new_status, TD::Types::ChatMemberStatus
  end
end
