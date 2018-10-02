module TD::Types
  # The user is offline.
  #
  # @attr was_online [Integer] Point in time (Unix timestamp) when the user was last online.
  class UserStatus::Offline < UserStatus
    attribute :was_online, TD::Types::Integer
  end
end
