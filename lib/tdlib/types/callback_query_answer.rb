module TD::Types
  # Contains a bot's answer to a callback query.
  #
  # @attr text [String] Text of the answer.
  # @attr show_alert [Boolean] True, if an alert should be shown to the user instead of a toast notification.
  # @attr url [String] URL to be opened.
  class CallbackQueryAnswer < Base
    attribute :text, TD::Types::String
    attribute :show_alert, TD::Types::Bool
    attribute :url, TD::Types::String
  end
end
