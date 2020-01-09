module TD::Types
  # Describes a gradient fill of a background.
  #
  # @attr top_color [Integer] A top color of the background in the RGB24 format.
  # @attr bottom_color [Integer] A bottom color of the background in the RGB24 format.
  # @attr rotation_angle [Integer] Clockwise rotation angle of the gradient, in degrees; 0-359.
  #   Should be always divisible by 45.
  class BackgroundFill::Gradient < BackgroundFill
    attribute :top_color, TD::Types::Integer
    attribute :bottom_color, TD::Types::Integer
    attribute :rotation_angle, TD::Types::Integer
  end
end
