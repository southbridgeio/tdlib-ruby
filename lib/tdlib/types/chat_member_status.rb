module TD::Types
  # Provides information about the status of a member in a chat.
  class ChatMemberStatus < Base
    %w[
      creator
      administrator
      member
      restricted
      left
      banned
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_member_status/#{type}"
    end
  end
end
