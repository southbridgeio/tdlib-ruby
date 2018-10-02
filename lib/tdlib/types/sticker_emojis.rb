module TD::Types
  # Represents a list of all emoji corresponding to a sticker in a sticker set.
  # The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the
  #   corresponding Sticker object.
  #
  # @attr emojis [Array<String>] List of emojis.
  class StickerEmojis < Base
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
