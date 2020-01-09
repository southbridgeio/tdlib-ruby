module TD::Types
  # Describes actions which should be possible to do through a chat action bar.
  class ChatActionBar < Base
    %w[
      report_spam
      report_unrelated_location
      report_add_block
      add_contact
      share_phone_number
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_action_bar/#{type}"
    end
  end
end
