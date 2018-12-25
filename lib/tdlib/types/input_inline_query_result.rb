module TD::Types
  # Represents a single result of an inline query; for bots only.
  class InputInlineQueryResult < Base
    %w[
      animated_gif
      animated_mpeg4
      article
      audio
      contact
      document
      game
      location
      photo
      sticker
      venue
      video
      voice_note
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_inline_query_result/#{type}"
    end
  end
end
