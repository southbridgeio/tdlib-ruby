module TD::Types
  # Photo description.
  #
  # @attr type [String] Thumbnail type (see https://core.telegram.org/constructor/photoSize).
  # @attr photo [TD::Types::File] Information about the photo file.
  # @attr width [Integer] Photo width.
  # @attr height [Integer] Photo height.
  class PhotoSize < Base
    attribute :type, TD::Types::String
    attribute :photo, TD::Types::File
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
  end
end
