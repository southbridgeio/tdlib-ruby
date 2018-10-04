module TD::Types
  # Contains information about a wallpaper.
  #
  # @attr id [Integer] Unique persistent wallpaper identifier.
  # @attr sizes [Array<TD::Types::PhotoSize>] Available variants of the wallpaper in different sizes.
  #   These photos can only be downloaded; they can't be sent in a message.
  # @attr color [Integer] Main color of the wallpaper in RGB24 format; should be treated as background color if no
  #   photos are specified.
  class Wallpaper < Base
    attribute :id, TD::Types::Integer
    attribute :sizes, TD::Types::Array.of(TD::Types::PhotoSize)
    attribute :color, TD::Types::Integer
  end
end
