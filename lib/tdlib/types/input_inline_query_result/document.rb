module TD::Types
  # Represents a link to a file.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr title [String] Title of the resulting file.
  # @attr description [String] Short description of the result, if known.
  # @attr document_url [String] URL of the file.
  # @attr mime_type [String] MIME type of the file content; only "application/pdf" and "application/zip" are currently
  #   allowed.
  # @attr thumbnail_url [String] The URL of the file thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Width of the thumbnail.
  # @attr thumbnail_height [Integer] Height of the thumbnail.
  # @attr reply_markup [TD::Types::ReplyMarkup::InlineKeyboard, nil] The message reply markup.
  # @attr input_message_content [TD::Types::InputMessageContent::Text, TD::Types::InputMessageContent::Document,
  #   TD::Types::InputMessageContent::Location, TD::Types::InputMessageContent::Venue,
  #   TD::Types::InputMessageContent::Contact] The content of the message to be sent.
  class InputInlineQueryResult::Document < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :document_url, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Integer
    attribute :thumbnail_height, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
