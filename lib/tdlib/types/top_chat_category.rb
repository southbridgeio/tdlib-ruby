module TD::Types
  # Represents the categories of chats for which a list of frequently used chats can be retrieved.
  class TopChatCategory < Base
    %w[
      users
      bots
      groups
      channels
      inline_bots
      calls
      forward_chats
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/top_chat_category/#{type}"
    end
  end
end
