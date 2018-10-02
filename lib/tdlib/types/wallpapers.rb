module TD::Types
  # Contains a list of wallpapers.
  #
  # @attr wallpapers [Array<Wallpaper>] A list of wallpapers.
  class Wallpapers < Base
    attribute :wallpapers, TD::Types::Array.of(TD::Types::Wallpaper)
  end
end
