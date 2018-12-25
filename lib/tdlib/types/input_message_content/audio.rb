module TD::Types
  # An audio message.
  #
  # @attr audio [TD::Types::InputFile] Audio file to be sent.
  # @attr album_cover_thumbnail [TD::Types::InputThumbnail, nil] Thumbnail of the cover for the album, if available.
  # @attr duration [Integer] Duration of the audio, in seconds; may be replaced by the server.
  # @attr title [String] Title of the audio; 0-64 characters; may be replaced by the server.
  # @attr performer [String] Performer of the audio; 0-64 characters, may be replaced by the server.
  # @attr caption [TD::Types::FormattedText] Audio caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::Audio < InputMessageContent
    attribute :audio, TD::Types::InputFile
    attribute :album_cover_thumbnail, TD::Types::InputThumbnail.optional.default(nil)
    attribute :duration, TD::Types::Integer
    attribute :title, TD::Types::String
    attribute :performer, TD::Types::String
    attribute :caption, TD::Types::FormattedText
  end
end
