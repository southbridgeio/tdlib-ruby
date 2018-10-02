module TD::Types
  # Represents a point on the map.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr location [Location] Location result.
  # @attr live_period [Integer] Amount of time relative to the message sent time until the location can be updated, in
  #   seconds.
  # @attr title [String] Title of the result.
  # @attr thumbnail_url [String] URL of the result thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Thumbnail width, if known.
  # @attr thumbnail_height [Integer] Thumbnail height, if known.
  # @attr reply_markup [ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # @attr input_message_content [InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or
  #   InputMessageContact.
  class InputInlineQueryResult::Location < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :location, TD::Types::Location
    attribute :live_period, TD::Types::Integer
    attribute :title, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Integer
    attribute :thumbnail_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
