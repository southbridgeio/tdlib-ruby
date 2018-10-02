module TD::Types
  # The list of recently used stickers was updated.
  #
  # @attr is_attached [Boolean] True, if the list of stickers attached to photo or video files was updated, otherwise
  #   the list of sent stickers is updated.
  # @attr sticker_ids [Array<Integer>] The new list of file identifiers of recently used stickers.
  class Update::RecentStickers < Update
    attribute :is_attached, TD::Types::Bool
    attribute :sticker_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
