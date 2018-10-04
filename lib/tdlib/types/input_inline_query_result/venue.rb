module TD::Types
  # Represents information about a venue.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr venue [TD::Types::Venue] Venue result.
  # @attr thumbnail_url [String] URL of the result thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Thumbnail width, if known.
  # @attr thumbnail_height [Integer] Thumbnail height, if known.
  # @attr reply_markup [TD::Types::ReplyMarkup::InlineKeyboard, nil] The message reply markup.
  # @attr input_message_content [TD::Types::InputMessageContent::Text, TD::Types::InputMessageContent::Location,
  #   TD::Types::InputMessageContent::Venue, TD::Types::InputMessageContent::Contact] The content of the message to be
  #   sent.
  class InputInlineQueryResult::Venue < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :venue, TD::Types::Venue
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Integer
    attribute :thumbnail_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
