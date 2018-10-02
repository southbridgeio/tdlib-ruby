module TD::Types
  # Represents result of checking whether a username can be set for a chat.
  class CheckChatUsernameResult < Base
    %w[
      ok
      username_invalid
      username_occupied
      public_chats_too_much
      public_groups_unavailable
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/check_chat_username_result/#{type}"
    end
  end
end
