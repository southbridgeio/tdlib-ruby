module TD::Types
  # A message with a game.
  #
  # @attr title [String, nil] Game title, empty for pinned game message.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Game < PushMessageContent
    attribute :title, TD::Types::String.optional.default(nil)
    attribute :is_pinned, TD::Types::Bool
  end
end
