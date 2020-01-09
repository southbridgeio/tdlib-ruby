module TD::Types
  # The message will be sent at the specified date.
  #
  # @attr send_date [Integer] Date the message will be sent.
  #   The date must be within 367 days in the future.
  class MessageSchedulingState::SendAtDate < MessageSchedulingState
    attribute :send_date, TD::Types::Integer
  end
end
