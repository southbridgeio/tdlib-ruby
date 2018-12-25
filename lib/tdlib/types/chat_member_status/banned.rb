module TD::Types
  # The user was banned (and hence is not a member of the chat).
  # Implies the user can't return to the chat or view messages.
  #
  # @attr banned_until_date [Integer] Point in time (Unix timestamp) when the user will be unbanned; 0 if never.
  #   If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is
  #   considered to be banned forever.
  class ChatMemberStatus::Banned < ChatMemberStatus
    attribute :banned_until_date, TD::Types::Integer
  end
end
