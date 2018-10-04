module TD::Types
  # Represents a link to a page containing an embedded video player or a video file.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr title [String] Title of the result.
  # @attr description [String] A short description of the result, if known.
  # @attr thumbnail_url [String] The URL of the video thumbnail (JPEG), if it exists.
  # @attr video_url [String] URL of the embedded video player or video file.
  # @attr mime_type [String] MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently
  #   supported.
  # @attr video_width [Integer] Width of the video.
  # @attr video_height [Integer] Height of the video.
  # @attr video_duration [Integer] Video duration, in seconds.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageVideo, InputMessageLocation, InputMessageVenue
  #   or InputMessageContact.
  class InputInlineQueryResult::Video < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :video_url, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :video_width, TD::Types::Integer
    attribute :video_height, TD::Types::Integer
    attribute :video_duration, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
