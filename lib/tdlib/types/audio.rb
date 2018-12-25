module TD::Types
  # Describes an audio file.
  # Audio is usually in MP3 format.
  #
  # @attr duration [Integer] Duration of the audio, in seconds; as defined by the sender.
  # @attr title [String] Title of the audio; as defined by the sender.
  # @attr performer [String] Performer of the audio; as defined by the sender.
  # @attr file_name [String] Original name of the file; as defined by the sender.
  # @attr mime_type [String] The MIME type of the file; as defined by the sender.
  # @attr album_cover_thumbnail [TD::Types::PhotoSize, nil] The thumbnail of the album cover; as defined by the sender.
  #   The full size thumbnail should be extracted from the downloaded file; may be null.
  # @attr audio [TD::Types::File] File containing the audio.
  class Audio < Base
    attribute :duration, TD::Types::Integer
    attribute :title, TD::Types::String
    attribute :performer, TD::Types::String
    attribute :file_name, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :album_cover_thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :audio, TD::Types::File
  end
end
