module TD::Types
  # A video message.
  #
  # @attr video [TD::Types::Video, nil] Message content; may be null.
  # @attr caption [String] Video caption.
  # @attr is_secret [Boolean] True, if the video is secret.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Video < PushMessageContent
    attribute :video, TD::Types::Video.optional.default(nil)
    attribute :caption, TD::Types::String
    attribute :is_secret, TD::Types::Bool
    attribute :is_pinned, TD::Types::Bool
  end
end
