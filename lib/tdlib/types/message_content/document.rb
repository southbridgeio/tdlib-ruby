module TD::Types
  # A document message (general file).
  #
  # @attr document [Document] Message content.
  # @attr caption [FormattedText] Document caption.
  class MessageContent::Document < MessageContent
    attribute :document, TD::Types::Document
    attribute :caption, TD::Types::FormattedText
  end
end
