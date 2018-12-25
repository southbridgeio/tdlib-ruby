module TD::Types
  # Contains a list of wallpapers.
  #
  # @attr wallpapers [Array<TD::Types::Wallpaper>] A list of wallpapers.
  class Wallpapers < Base
    attribute :wallpapers, TD::Types::Array.of(TD::Types::Wallpaper)
  end
end
