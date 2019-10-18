module TD::Types
  # A solid background.
  #
  # @attr color [Integer] A color of the background in RGB24 format.
  class BackgroundType::Solid < BackgroundType
    attribute :color, TD::Types::Integer
  end
end
