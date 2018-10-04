module TD::Types
  # Represents a link to a WEBP sticker.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr thumbnail_url [String] URL of the sticker thumbnail, if it exists.
  # @attr sticker_url [String] The URL of the WEBP sticker (sticker file size must not exceed 5MB).
  # @attr sticker_width [Integer] Width of the sticker.
  # @attr sticker_height [Integer] Height of the sticker.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, inputMessageSticker, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::Sticker < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :sticker_url, TD::Types::String
    attribute :sticker_width, TD::Types::Integer
    attribute :sticker_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
