module TD::Types
  # A message with a sticker.
  #
  # @attr sticker [TD::Types::Sticker, nil] Message content; may be null.
  # @attr emoji [String, nil] Emoji corresponding to the sticker; may be empty.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Sticker < PushMessageContent
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
    attribute :emoji, TD::Types::String.optional.default(nil)
    attribute :is_pinned, TD::Types::Bool
  end
end
