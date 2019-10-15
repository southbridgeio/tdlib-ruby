module TD::Types
  # The content of a message to send.
  class InputMessageContent < Base
    %w[
      text
      animation
      audio
      document
      photo
      sticker
      video
      video_note
      voice_note
      location
      venue
      contact
      game
      invoice
      poll
      forwarded
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_message_content/#{type}"
    end
  end
end
