module TD::Types
  # Thumbnail image of a very poor quality and low resolution.
  #
  # @attr width [Integer] Thumbnail width, usually doesn't exceed 40.
  # @attr height [Integer] Thumbnail height, usually doesn't exceed 40.
  # @attr data [String] The thumbnail in JPEG format.
  class Minithumbnail < Base
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :data, TD::Types::String
  end
end
