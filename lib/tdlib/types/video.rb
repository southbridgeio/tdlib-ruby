module TD::Types
  # Describes a video file.
  #
  # @attr duration [Integer] Duration of the video, in seconds; as defined by the sender.
  # @attr width [Integer] Video width; as defined by the sender.
  # @attr height [Integer] Video height; as defined by the sender.
  # @attr file_name [String] Original name of the file; as defined by the sender.
  # @attr mime_type [String] MIME type of the file; as defined by the sender.
  # @attr has_stickers [Boolean] True, if stickers were added to the photo.
  # @attr supports_streaming [Boolean] True, if the video should be tried to be streamed.
  # @attr thumbnail [PhotoSize] Video thumbnail; as defined by the sender; may be null.
  # @attr video [File] File containing the video.
  class Video < Base
    attribute :duration, TD::Types::Integer
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :file_name, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :has_stickers, TD::Types::Bool
    attribute :supports_streaming, TD::Types::Bool
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :video, TD::Types::File
  end
end
