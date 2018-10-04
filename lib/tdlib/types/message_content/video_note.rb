module TD::Types
  # A video note message.
  #
  # @attr video_note [TD::Types::VideoNote] Message content.
  # @attr is_viewed [Boolean] True, if at least one of the recipients has viewed the video note.
  # @attr is_secret [Boolean] True, if the video note thumbnail must be blurred and the video note must be shown only
  #   while tapped.
  class MessageContent::VideoNote < MessageContent
    attribute :video_note, TD::Types::VideoNote
    attribute :is_viewed, TD::Types::Bool
    attribute :is_secret, TD::Types::Bool
  end
end
