module TD::Types
  # Represents a link to an article or web page.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr url [String] URL of the result, if it exists.
  # @attr hide_url [Boolean] True, if the URL must be not shown.
  # @attr title [String] Title of the result.
  # @attr description [String] A short description of the result.
  # @attr thumbnail_url [String] URL of the result thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Thumbnail width, if known.
  # @attr thumbnail_height [Integer] Thumbnail height, if known.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or
  #   InputMessageContact.
  class InputInlineQueryResult::Article < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :url, TD::Types::String
    attribute :hide_url, TD::Types::Bool
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Integer
    attribute :thumbnail_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
