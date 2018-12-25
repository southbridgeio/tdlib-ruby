module TD::Types
  # Position on a photo where a mask should be placed.
  #
  # @attr point [TD::Types::MaskPoint] Part of the face, relative to which the mask should be placed.
  # @attr x_shift [Float] Shift by X-axis measured in widths of the mask scaled to the face size, from left to right.
  #   (For example, -1.0 will place the mask just to the left of the default mask position).
  # @attr y_shift [Float] Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom.
  #   (For example, 1.0 will place the mask just below the default mask position).
  # @attr scale [Float] Mask scaling coefficient.
  #   (For example, 2.0 means a doubled size).
  class MaskPosition < Base
    attribute :point, TD::Types::MaskPoint
    attribute :x_shift, TD::Types::Float
    attribute :y_shift, TD::Types::Float
    attribute :scale, TD::Types::Float
  end
end
