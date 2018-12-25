module TD::Types
  # Describes the type of a chat.
  class ChatType < Base
    %w[
      private
      basic_group
      supergroup
      secret
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_type/#{type}"
    end
  end
end
