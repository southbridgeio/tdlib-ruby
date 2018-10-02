module TD::Types
  # A photo message.
  #
  # @attr photo [Photo] Message content.
  # @attr caption [FormattedText] Photo caption.
  # @attr is_secret [Boolean] True, if the photo must be blurred and must be shown only while tapped.
  class MessageContent::Photo < MessageContent
    attribute :photo, TD::Types::Photo
    attribute :caption, TD::Types::FormattedText
    attribute :is_secret, TD::Types::Bool
  end
end
