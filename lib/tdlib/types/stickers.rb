module TD::Types
  # Represents a list of stickers.
  #
  # @attr stickers [Array<Sticker>] List of stickers.
  class Stickers < Base
    attribute :stickers, TD::Types::Array.of(TD::Types::Sticker)
  end
end
