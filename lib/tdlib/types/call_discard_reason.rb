module TD::Types
  # Describes the reason why a call was discarded.
  class CallDiscardReason < Base
    %w[
      empty
      missed
      declined
      disconnected
      hung_up
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/call_discard_reason/#{type}"
    end
  end
end
