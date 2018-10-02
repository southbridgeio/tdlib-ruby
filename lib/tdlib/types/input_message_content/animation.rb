module TD::Types
  # An animation message (GIF-style)..
  #
  # @attr animation [InputFile] Animation file to be sent.
  # @attr thumbnail [InputThumbnail] Animation thumbnail, if available.
  # @attr duration [Integer] Duration of the animation, in seconds.
  # @attr width [Integer] Width of the animation; may be replaced by the server.
  # @attr height [Integer] Height of the animation; may be replaced by the server.
  # @attr caption [FormattedText] Animation caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::Animation < InputMessageContent
    attribute :animation, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail.optional.default(nil)
    attribute :duration, TD::Types::Integer
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :caption, TD::Types::FormattedText
  end
end
