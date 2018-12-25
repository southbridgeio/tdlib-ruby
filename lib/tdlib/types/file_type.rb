module TD::Types
  # Represents the type of a file.
  class FileType < Base
    %w[
      none
      animation
      audio
      document
      photo
      profile_photo
      secret
      secret_thumbnail
      secure
      sticker
      thumbnail
      unknown
      video
      video_note
      voice_note
      wallpaper
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/file_type/#{type}"
    end
  end
end
