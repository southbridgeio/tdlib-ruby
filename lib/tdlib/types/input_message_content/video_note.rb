module TD::Types
  # A video note message.
  #
  # @attr video_note [TD::Types::InputFile] Video note to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail, nil] Video thumbnail, if available.
  # @attr duration [Integer] Duration of the video, in seconds.
  # @attr length [Integer] Video width and height; must be positive and not greater than 640.
  class InputMessageContent::VideoNote < InputMessageContent
    attribute :video_note, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail.optional.default(nil)
    attribute :duration, TD::Types::Integer
    attribute :length, TD::Types::Integer
  end
end
