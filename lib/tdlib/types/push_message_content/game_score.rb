module TD::Types
  # A new high score was achieved in a game.
  #
  # @attr title [String, nil] Game title, empty for pinned message.
  # @attr score [Integer] New score, 0 for pinned message.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::GameScore < PushMessageContent
    attribute :title, TD::Types::String.optional.default(nil)
    attribute :score, TD::Types::Integer
    attribute :is_pinned, TD::Types::Bool
  end
end
