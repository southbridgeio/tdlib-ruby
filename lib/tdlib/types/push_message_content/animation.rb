module TD::Types
  # An animation message (GIF-style)..
  #
  # @attr animation [TD::Types::Animation, nil] Message content; may be null.
  # @attr caption [String] Animation caption.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Animation < PushMessageContent
    attribute :animation, TD::Types::Animation.optional.default(nil)
    attribute :caption, TD::Types::String
    attribute :is_pinned, TD::Types::Bool
  end
end
