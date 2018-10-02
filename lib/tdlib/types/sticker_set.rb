module TD::Types
  # Represents a sticker set.
  #
  # @attr id [Integer] Identifier of the sticker set.
  # @attr title [String] Title of the sticker set.
  # @attr name [String] Name of the sticker set.
  # @attr is_installed [Boolean] True, if the sticker set has been installed by the current user.
  # @attr is_archived [Boolean] True, if the sticker set has been archived.
  #   A sticker set can't be installed and archived simultaneously.
  # @attr is_official [Boolean] True, if the sticker set is official.
  # @attr is_masks [Boolean] True, if the stickers in the set are masks.
  # @attr is_viewed [Boolean] True for already viewed trending sticker sets.
  # @attr stickers [Array<Sticker>] List of stickers in this set.
  # @attr emojis [Array<StickerEmojis>] A list of emoji corresponding to the stickers in the same order.
  class StickerSet < Base
    attribute :id, TD::Types::Integer
    attribute :title, TD::Types::String
    attribute :name, TD::Types::String
    attribute :is_installed, TD::Types::Bool
    attribute :is_archived, TD::Types::Bool
    attribute :is_official, TD::Types::Bool
    attribute :is_masks, TD::Types::Bool
    attribute :is_viewed, TD::Types::Bool
    attribute :stickers, TD::Types::Array.of(TD::Types::Sticker)
    attribute :emojis, TD::Types::Array.of(TD::Types::StickerEmojis)
  end
end
