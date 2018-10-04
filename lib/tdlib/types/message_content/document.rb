module TD::Types
  # A document message (general file).
  #
  # @attr document [TD::Types::Document] Message content.
  # @attr caption [TD::Types::FormattedText] Document caption.
  class MessageContent::Document < MessageContent
    attribute :document, TD::Types::Document
    attribute :caption, TD::Types::FormattedText
  end
end
