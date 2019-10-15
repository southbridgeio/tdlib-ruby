module TD::Types
  # Contains content of a push message notification.
  class PushMessageContent < Base
    %w[
      hidden
      animation
      audio
      contact
      contact_registered
      document
      game
      game_score
      invoice
      location
      photo
      poll
      screenshot_taken
      sticker
      text
      video
      video_note
      voice_note
      basic_group_chat_create
      chat_add_members
      chat_change_photo
      chat_change_title
      chat_delete_member
      chat_join_by_link
      message_forwards
      media_album
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/push_message_content/#{type}"
    end
  end
end
