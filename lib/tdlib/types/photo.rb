module TD::Types
  # Describes a photo.
  #
  # @attr has_stickers [Boolean] True, if stickers were added to the photo.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Photo minithumbnail; may be null.
  # @attr sizes [Array<TD::Types::PhotoSize>] Available variants of the photo, in different sizes.
  class Photo < Base
    attribute :has_stickers, TD::Types::Bool
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :sizes, TD::Types::Array.of(TD::Types::PhotoSize)
  end
end
