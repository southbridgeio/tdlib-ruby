module TD::Types
  # Represents a sticker set.
  #
  # @attr id [Integer] Identifier of the sticker set.
  # @attr title [String] Title of the sticker set.
  # @attr name [String] Name of the sticker set.
  # @attr thumbnail [TD::Types::PhotoSize, nil] Sticker set thumbnail in WEBP format with width and height 100; may be
  #   null.
  #   The file can be downloaded only before the thumbnail is changed.
  # @attr is_installed [Boolean] True, if the sticker set has been installed by the current user.
  # @attr is_archived [Boolean] True, if the sticker set has been archived.
  #   A sticker set can't be installed and archived simultaneously.
  # @attr is_official [Boolean] True, if the sticker set is official.
  # @attr is_animated [Boolean] True, is the stickers in the set are animated.
  # @attr is_masks [Boolean] True, if the stickers in the set are masks.
  # @attr is_viewed [Boolean] True for already viewed trending sticker sets.
  # @attr stickers [Array<TD::Types::Sticker>] List of stickers in this set.
  # @attr emojis [Array<TD::Types::Emojis>] A list of emoji corresponding to the stickers in the same order.
  #   The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the
  #   corresponding Sticker object.
  class StickerSet < Base
    attribute :id, TD::Types::Integer
    attribute :title, TD::Types::String
    attribute :name, TD::Types::String
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :is_installed, TD::Types::Bool
    attribute :is_archived, TD::Types::Bool
    attribute :is_official, TD::Types::Bool
    attribute :is_animated, TD::Types::Bool
    attribute :is_masks, TD::Types::Bool
    attribute :is_viewed, TD::Types::Bool
    attribute :stickers, TD::Types::Array.of(TD::Types::Sticker)
    attribute :emojis, TD::Types::Array.of(TD::Types::Emojis)
  end
end
