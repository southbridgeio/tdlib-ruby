module TD::Types
  # Describes the current call state.
  class CallState < Base
    %w[
      pending
      exchanging_keys
      ready
      hanging_up
      discarded
      error
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/call_state/#{type}"
    end
  end
end
