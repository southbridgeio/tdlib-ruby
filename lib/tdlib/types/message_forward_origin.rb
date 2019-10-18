module TD::Types
  # Contains information about the origin of a forwarded message.
  class MessageForwardOrigin < Base
    %w[
      user
      hidden_user
      channel
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_forward_origin/#{type}"
    end
  end
end
