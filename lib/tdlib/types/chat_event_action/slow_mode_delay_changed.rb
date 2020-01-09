module TD::Types
  # The slow_mode_delay setting of a supergroup was changed.
  #
  # @attr old_slow_mode_delay [Integer] Previous value of slow_mode_delay.
  # @attr new_slow_mode_delay [Integer] New value of slow_mode_delay.
  class ChatEventAction::SlowModeDelayChanged < ChatEventAction
    attribute :old_slow_mode_delay, TD::Types::Integer
    attribute :new_slow_mode_delay, TD::Types::Integer
  end
end
