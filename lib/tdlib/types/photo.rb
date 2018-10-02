module TD::Types
  # Describes a photo.
  #
  # @attr id [Integer] Photo identifier; 0 for deleted photos.
  # @attr has_stickers [Boolean] True, if stickers were added to the photo.
  # @attr sizes [Array<PhotoSize>] Available variants of the photo, in different sizes.
  class Photo < Base
    attribute :id, TD::Types::Integer
    attribute :has_stickers, TD::Types::Bool
    attribute :sizes, TD::Types::Array.of(TD::Types::PhotoSize)
  end
end
