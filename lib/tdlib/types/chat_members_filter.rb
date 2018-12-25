module TD::Types
  # Specifies the kind of chat members to return in searchChatMembers.
  class ChatMembersFilter < Base
    %w[
      administrators
      members
      restricted
      banned
      bots
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_members_filter/#{type}"
    end
  end
end
