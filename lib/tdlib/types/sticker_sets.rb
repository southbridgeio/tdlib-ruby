module TD::Types
  # Represents a list of sticker sets.
  #
  # @attr total_count [Integer] Approximate total number of sticker sets found.
  # @attr sets [Array<TD::Types::StickerSetInfo>] List of sticker sets.
  class StickerSets < Base
    attribute :total_count, TD::Types::Integer
    attribute :sets, TD::Types::Array.of(TD::Types::StickerSetInfo)
  end
end
