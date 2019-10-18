module TD::Types
  # Represents a link to an animated (i.e.
  # without sound) H.264/MPEG-4 AVC video.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr title [String] Title of the result.
  # @attr thumbnail_url [String] URL of the static result thumbnail (JPEG or GIF), if it exists.
  # @attr mpeg4_url [String] The URL of the MPEG4-file (file size must not exceed 1MB).
  # @attr mpeg4_duration [Integer] Duration of the video, in seconds.
  # @attr mpeg4_width [Integer] Width of the video.
  # @attr mpeg4_height [Integer] Height of the video.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::AnimatedMpeg4 < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :mpeg4_url, TD::Types::String
    attribute :mpeg4_duration, TD::Types::Integer
    attribute :mpeg4_width, TD::Types::Integer
    attribute :mpeg4_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
