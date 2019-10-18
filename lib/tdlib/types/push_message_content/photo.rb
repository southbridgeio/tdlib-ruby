module TD::Types
  # A photo message.
  #
  # @attr photo [TD::Types::Photo, nil] Message content; may be null.
  # @attr caption [String] Photo caption.
  # @attr is_secret [Boolean] True, if the photo is secret.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Photo < PushMessageContent
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :caption, TD::Types::String
    attribute :is_secret, TD::Types::Bool
    attribute :is_pinned, TD::Types::Bool
  end
end
