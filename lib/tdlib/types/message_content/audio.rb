module TD::Types
  # An audio message.
  #
  # @attr audio [Audio] Message content.
  # @attr caption [FormattedText] Audio caption.
  class MessageContent::Audio < MessageContent
    attribute :audio, TD::Types::Audio
    attribute :caption, TD::Types::FormattedText
  end
end
