module TD::Types
  # Contains information about the time when a scheduled message will be sent.
  class MessageSchedulingState < Base
    %w[
      send_at_date
      send_when_online
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_scheduling_state/#{type}"
    end
  end
end
