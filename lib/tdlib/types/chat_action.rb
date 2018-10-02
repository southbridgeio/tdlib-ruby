module TD::Types
  # Describes the different types of activity in a chat.
  class ChatAction < Base
    %w[
      typing
      recording_video
      uploading_video
      recording_voice_note
      uploading_voice_note
      uploading_photo
      uploading_document
      choosing_location
      choosing_contact
      start_playing_game
      recording_video_note
      uploading_video_note
      cancel
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_action/#{type}"
    end
  end
end
