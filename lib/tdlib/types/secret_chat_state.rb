module TD::Types
  # Describes the current secret chat state.
  class SecretChatState < Base
    %w[
      pending
      ready
      closed
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/secret_chat_state/#{type}"
    end
  end
end
