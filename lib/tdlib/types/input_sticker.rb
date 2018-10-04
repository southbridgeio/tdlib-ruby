module TD::Types
  # Describes a sticker that should be added to a sticker set.
  #
  # @attr png_sticker [TD::Types::InputFile] PNG image with the sticker; must be up to 512 kB in size and fit in a
  #   512x512 square.
  # @attr emojis [String] Emoji corresponding to the sticker.
  # @attr mask_position [TD::Types::MaskPosition, nil] For masks, position where the mask should be placed; may be
  #   null.
  class InputSticker < Base
    attribute :png_sticker, TD::Types::InputFile
    attribute :emojis, TD::Types::String
    attribute :mask_position, TD::Types::MaskPosition.optional.default(nil)
  end
end
