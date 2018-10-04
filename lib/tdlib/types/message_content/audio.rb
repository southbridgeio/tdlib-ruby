module TD::Types
  # An audio message.
  #
  # @attr audio [TD::Types::Audio] Message content.
  # @attr caption [TD::Types::FormattedText] Audio caption.
  class MessageContent::Audio < MessageContent
    attribute :audio, TD::Types::Audio
    attribute :caption, TD::Types::FormattedText
  end
end
