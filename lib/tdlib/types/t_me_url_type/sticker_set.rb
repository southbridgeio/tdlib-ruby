module TD::Types
  # A URL linking to a sticker set.
  #
  # @attr sticker_set_id [Integer] Identifier of the sticker set.
  class TMeUrlType::StickerSet < TMeUrlType
    attribute :sticker_set_id, TD::Types::Integer
  end
end
