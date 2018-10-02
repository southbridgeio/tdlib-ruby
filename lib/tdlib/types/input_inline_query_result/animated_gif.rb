module TD::Types
  # Represents a link to an animated GIF.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr title [String] Title of the query result.
  # @attr thumbnail_url [String] URL of the static result thumbnail (JPEG or GIF), if it exists.
  # @attr gif_url [String] The URL of the GIF-file (file size must not exceed 1MB).
  # @attr gif_duration [Integer] Duration of the GIF, in seconds.
  # @attr gif_width [Integer] Width of the GIF.
  # @attr gif_height [Integer] Height of the GIF.
  # @attr reply_markup [ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # @attr input_message_content [InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::AnimatedGif < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :gif_url, TD::Types::String
    attribute :gif_duration, TD::Types::Integer
    attribute :gif_width, TD::Types::Integer
    attribute :gif_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
