module TD::Types
  # Describes a sticker.
  #
  # @attr set_id [Integer] The identifier of the sticker set to which the sticker belongs; 0 if none.
  # @attr width [Integer] Sticker width; as defined by the sender.
  # @attr height [Integer] Sticker height; as defined by the sender.
  # @attr emoji [String] Emoji corresponding to the sticker.
  # @attr is_mask [Boolean] True, if the sticker is a mask.
  # @attr mask_position [MaskPosition] Position where the mask should be placed; may be null.
  # @attr thumbnail [PhotoSize] Sticker thumbnail in WEBP or JPEG format; may be null.
  # @attr sticker [File] File containing the sticker.
  class Sticker < Base
    attribute :set_id, TD::Types::Integer
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :emoji, TD::Types::String
    attribute :is_mask, TD::Types::Bool
    attribute :mask_position, TD::Types::MaskPosition.optional.default(nil)
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :sticker, TD::Types::File
  end
end
