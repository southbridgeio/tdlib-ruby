module TD::Types
  # A photo message.
  #
  # @attr photo [TD::Types::InputFile] Photo to send.
  # @attr thumbnail [TD::Types::InputThumbnail] Photo thumbnail to be sent, this is sent to the other party in secret
  #   chats only.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the photo, if applicable.
  # @attr width [Integer] Photo width.
  # @attr height [Integer] Photo height.
  # @attr caption [TD::Types::FormattedText] Photo caption; 0-GetOption("message_caption_length_max") characters.
  # @attr ttl [Integer] Photo TTL (Time To Live), in seconds (0-60).
  #   A non-zero TTL can be specified only in private chats.
  class InputMessageContent::Photo < InputMessageContent
    attribute :photo, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :caption, TD::Types::FormattedText
    attribute :ttl, TD::Types::Integer
  end
end
