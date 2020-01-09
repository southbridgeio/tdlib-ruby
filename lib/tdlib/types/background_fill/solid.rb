module TD::Types
  # Describes a solid fill of a background.
  #
  # @attr color [Integer] A color of the background in the RGB24 format.
  class BackgroundFill::Solid < BackgroundFill
    attribute :color, TD::Types::Integer
  end
end
