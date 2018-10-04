module TD::Types
  # Describes a web page preview.
  #
  # @attr url [String] Original URL of the link.
  # @attr display_url [String] URL to display.
  # @attr type [String] Type of the web page.
  #   Can be: article, photo, audio, video, document, profile, app, or something else.
  # @attr site_name [String] Short name of the site (e.g., Google Docs, App Store).
  # @attr title [String] Title of the content.
  # @attr description [String] Description of the content.
  # @attr photo [TD::Types::Photo] Image representing the content; may be null.
  # @attr embed_url [String] URL to show in the embedded preview.
  # @attr embed_type [String] MIME type of the embedded preview, (e.g., text/html or video/mp4).
  # @attr embed_width [Integer] Width of the embedded preview.
  # @attr embed_height [Integer] Height of the embedded preview.
  # @attr duration [Integer] Duration of the content, in seconds.
  # @attr author [String] Author of the content.
  # @attr animation [TD::Types::Animation] Preview of the content as an animation, if available; may be null.
  # @attr audio [TD::Types::Audio] Preview of the content as an audio file, if available; may be null.
  # @attr document [TD::Types::Document] Preview of the content as a document, if available (currently only available
  #   for small PDF files and ZIP archives); may be null.
  # @attr sticker [TD::Types::Sticker] Preview of the content as a sticker for small WEBP files, if available; may be
  #   null.
  # @attr video [TD::Types::Video] Preview of the content as a video, if available; may be null.
  # @attr video_note [TD::Types::VideoNote] Preview of the content as a video note, if available; may be null.
  # @attr voice_note [TD::Types::VoiceNote] Preview of the content as a voice note, if available; may be null.
  # @attr has_instant_view [Boolean] True, if the web page has an instant view.
  class WebPage < Base
    attribute :url, TD::Types::String
    attribute :display_url, TD::Types::String
    attribute :type, TD::Types::String
    attribute :site_name, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :embed_url, TD::Types::String
    attribute :embed_type, TD::Types::String
    attribute :embed_width, TD::Types::Integer
    attribute :embed_height, TD::Types::Integer
    attribute :duration, TD::Types::Integer
    attribute :author, TD::Types::String
    attribute :animation, TD::Types::Animation.optional.default(nil)
    attribute :audio, TD::Types::Audio.optional.default(nil)
    attribute :document, TD::Types::Document.optional.default(nil)
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
    attribute :video, TD::Types::Video.optional.default(nil)
    attribute :video_note, TD::Types::VideoNote.optional.default(nil)
    attribute :voice_note, TD::Types::VoiceNote.optional.default(nil)
    attribute :has_instant_view, TD::Types::Bool
  end
end
