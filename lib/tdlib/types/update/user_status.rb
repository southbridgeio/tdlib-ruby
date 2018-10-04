module TD::Types
  # The user went online or offline.
  #
  # @attr user_id [Integer] User identifier.
  # @attr status [TD::Types::UserStatus] New status of the user.
  class Update::UserStatus < Update
    attribute :user_id, TD::Types::Integer
    attribute :status, TD::Types::UserStatus
  end
end
