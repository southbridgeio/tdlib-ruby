module TD::Types
  # Describes a video note.
  # The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.
  #
  # @attr duration [Integer] Duration of the video, in seconds; as defined by the sender.
  # @attr length [Integer] Video width and height; as defined by the sender.
  # @attr thumbnail [PhotoSize] Video thumbnail; as defined by the sender; may be null.
  # @attr video [File] File containing the video.
  class VideoNote < Base
    attribute :duration, TD::Types::Integer
    attribute :length, TD::Types::Integer
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :video, TD::Types::File
  end
end
