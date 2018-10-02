module TD::Types
  # Describes an animation file.
  # The animation must be encoded in GIF or MPEG4 format.
  #
  # @attr duration [Integer] Duration of the animation, in seconds; as defined by the sender.
  # @attr width [Integer] Width of the animation.
  # @attr height [Integer] Height of the animation.
  # @attr file_name [String] Original name of the file; as defined by the sender.
  # @attr mime_type [String] MIME type of the file, usually "image/gif" or "video/mp4".
  # @attr thumbnail [PhotoSize] Animation thumbnail; may be null.
  # @attr animation [File] File containing the animation.
  class Animation < Base
    attribute :duration, TD::Types::Integer
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :file_name, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :animation, TD::Types::File
  end
end
