module TD::Types
  # Instructs clients to force a reply to this message.
  #
  # @attr is_personal [Boolean] True, if a forced reply must automatically be shown to the current user.
  #   For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user
  #   of a reply.
  class ReplyMarkup::ForceReply < ReplyMarkup
    attribute :is_personal, TD::Types::Bool
  end
end
