module TD::Types
  # Represents a link to an opus-encoded audio file within an OGG container, single channel audio.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr title [String] Title of the voice note.
  # @attr voice_note_url [String] The URL of the voice note file.
  # @attr voice_note_duration [Integer] Duration of the voice note, in seconds.
  # @attr reply_markup [ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # @attr input_message_content [InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageVoiceNote, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::VoiceNote < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :voice_note_url, TD::Types::String
    attribute :voice_note_duration, TD::Types::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
