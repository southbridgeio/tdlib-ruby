module TD::Types
  # The list of installed sticker sets was updated.
  #
  # @attr is_masks [Boolean] True, if the list of installed mask sticker sets was updated.
  # @attr sticker_set_ids [Array<Integer>] The new list of installed ordinary sticker sets.
  class Update::InstalledStickerSets < Update
    attribute :is_masks, TD::Types::Bool
    attribute :sticker_set_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
