module TD::Types
  # A button that opens a specified URL.
  #
  # @attr url [String] HTTP or tg:// URL to open.
  class InlineKeyboardButtonType::Url < InlineKeyboardButtonType
    attribute :url, TD::Types::String
  end
end
