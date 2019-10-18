module TD::Types
  # Represents a user contact.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr contact [TD::Types::Contact] User contact.
  # @attr thumbnail_url [String] URL of the result thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Thumbnail width, if known.
  # @attr thumbnail_height [Integer] Thumbnail height, if known.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or
  #   InputMessageContact.
  class InputInlineQueryResult::Contact < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :contact, TD::Types::Contact
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Integer
    attribute :thumbnail_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
