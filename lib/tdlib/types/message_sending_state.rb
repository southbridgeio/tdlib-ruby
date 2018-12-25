module TD::Types
  # Contains information about the sending state of the message.
  class MessageSendingState < Base
    %w[
      pending
      failed
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_sending_state/#{type}"
    end
  end
end
