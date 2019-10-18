module TD::Types
  # A PNG pattern to be combined with the color chosen by the user.
  #
  # @attr is_moving [Boolean] True, if the background needs to be slightly moved when device is rotated.
  # @attr color [Integer] Main color of the background in RGB24 format.
  # @attr intensity [Integer] Intensity of the pattern when it is shown above the main background color, 0-100.
  class BackgroundType::Pattern < BackgroundType
    attribute :is_moving, TD::Types::Bool
    attribute :color, TD::Types::Integer
    attribute :intensity, TD::Types::Integer
  end
end
