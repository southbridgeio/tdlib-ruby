module TD::Types
  # Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.
  class ReplyMarkup < Base
    %w[
      remove_keyboard
      force_reply
      show_keyboard
      inline_keyboard
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/reply_markup/#{type}"
    end
  end
end
