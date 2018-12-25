module TD::Types
  # Represents a single result of an inline query.
  class InlineQueryResult < Base
    %w[
      article
      contact
      location
      venue
      game
      animation
      audio
      document
      photo
      sticker
      video
      voice_note
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/inline_query_result/#{type}"
    end
  end
end
