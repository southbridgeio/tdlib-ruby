module TD::Types
  # An animation message (GIF-style)..
  #
  # @attr animation [Animation] Message content.
  # @attr caption [FormattedText] Animation caption.
  # @attr is_secret [Boolean] True, if the animation thumbnail must be blurred and the animation must be shown only
  #   while tapped.
  class MessageContent::Animation < MessageContent
    attribute :animation, TD::Types::Animation
    attribute :caption, TD::Types::FormattedText
    attribute :is_secret, TD::Types::Bool
  end
end
