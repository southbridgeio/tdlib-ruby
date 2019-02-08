module TD::Types
  # Contains information about the initial sender of a forwarded message.
  class MessageForwardInfo < Base
    %w[
      message_forwarded_from_user
      message_forwarded_post
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_forward_info/#{type}"
    end
  end
end
