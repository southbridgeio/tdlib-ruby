module TD::Types
  # A video message.
  #
  # @attr video [TD::Types::InputFile] Video to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail, nil] Video thumbnail, if available.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the video, if applicable.
  # @attr duration [Integer] Duration of the video, in seconds.
  # @attr width [Integer] Video width.
  # @attr height [Integer] Video height.
  # @attr supports_streaming [Boolean] True, if the video should be tried to be streamed.
  # @attr caption [TD::Types::FormattedText] Video caption; 0-GetOption("message_caption_length_max") characters.
  # @attr ttl [Integer] Video TTL (Time To Live), in seconds (0-60).
  #   A non-zero TTL can be specified only in private chats.
  class InputMessageContent::Video < InputMessageContent
    attribute :video, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail.optional.default(nil)
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :duration, TD::Types::Integer
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :supports_streaming, TD::Types::Bool
    attribute :caption, TD::Types::FormattedText
    attribute :ttl, TD::Types::Integer
  end
end
