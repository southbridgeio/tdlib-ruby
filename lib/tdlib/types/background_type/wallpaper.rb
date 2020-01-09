module TD::Types
  # A wallpaper in JPEG format.
  #
  # @attr is_blurred [Boolean] True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred
  #   with radius 12.
  # @attr is_moving [Boolean] True, if the background needs to be slightly moved when device is tilted.
  class BackgroundType::Wallpaper < BackgroundType
    attribute :is_blurred, TD::Types::Bool
    attribute :is_moving, TD::Types::Bool
  end
end
