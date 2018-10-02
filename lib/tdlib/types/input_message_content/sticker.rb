module TD::Types
  # A sticker message.
  #
  # @attr sticker [InputFile] Sticker to be sent.
  # @attr thumbnail [InputThumbnail] Sticker thumbnail, if available.
  # @attr width [Integer] Sticker width.
  # @attr height [Integer] Sticker height.
  class InputMessageContent::Sticker < InputMessageContent
    attribute :sticker, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail.optional.default(nil)
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
  end
end
