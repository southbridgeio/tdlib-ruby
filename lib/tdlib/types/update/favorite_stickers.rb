module TD::Types
  # The list of favorite stickers was updated.
  #
  # @attr sticker_ids [Array<Integer>] The new list of file identifiers of favorite stickers.
  class Update::FavoriteStickers < Update
    attribute :sticker_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
