module TD::Types
  # A text message.
  #
  # @attr text [TD::Types::FormattedText] Formatted text to be sent; 1-GetOption("message_text_length_max") characters.
  #   Only Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to
  #   be specified manually.
  # @attr disable_web_page_preview [Boolean] True, if rich web page previews for URLs in the message text should be
  #   disabled.
  # @attr clear_draft [Boolean] True, if a chat message draft should be deleted.
  class InputMessageContent::Text < InputMessageContent
    attribute :text, TD::Types::FormattedText
    attribute :disable_web_page_preview, TD::Types::Bool
    attribute :clear_draft, TD::Types::Bool
  end
end
