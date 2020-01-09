module TD::Types
  # Options to be used when a message is send.
  #
  # @attr disable_notification [Boolean] Pass true to disable notification for the message.
  #   Must be false if the message is sent to a secret chat.
  # @attr from_background [Boolean] Pass true if the message is sent from the background.
  # @attr scheduling_state [TD::Types::MessageSchedulingState] Message scheduling state.
  #   Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled.
  class SendMessageOptions < Base
    attribute :disable_notification, TD::Types::Bool
    attribute :from_background, TD::Types::Bool
    attribute :scheduling_state, TD::Types::MessageSchedulingState
  end
end
