module TD::Types
  # Describes actions that a user is allowed to take in a chat.
  #
  # @attr can_send_messages [Boolean] True, if the user can send text messages, contacts, locations, and venues.
  # @attr can_send_media_messages [Boolean] True, if the user can send audio files, documents, photos, videos, video
  #   notes, and voice notes.
  #   Implies can_send_messages permissions.
  # @attr can_send_polls [Boolean] True, if the user can send polls.
  #   Implies can_send_messages permissions.
  # @attr can_send_other_messages [Boolean] True, if the user can send animations, games, and stickers and use inline
  #   bots.
  #   Implies can_send_messages permissions.
  # @attr can_add_web_page_previews [Boolean] True, if the user may add a web page preview to their messages.
  #   Implies can_send_messages permissions.
  # @attr can_change_info [Boolean] True, if the user can change the chat title, photo, and other settings.
  # @attr can_invite_users [Boolean] True, if the user can invite new users to the chat.
  # @attr can_pin_messages [Boolean] True, if the user can pin messages.
  class ChatPermissions < Base
    attribute :can_send_messages, TD::Types::Bool
    attribute :can_send_media_messages, TD::Types::Bool
    attribute :can_send_polls, TD::Types::Bool
    attribute :can_send_other_messages, TD::Types::Bool
    attribute :can_add_web_page_previews, TD::Types::Bool
    attribute :can_change_info, TD::Types::Bool
    attribute :can_invite_users, TD::Types::Bool
    attribute :can_pin_messages, TD::Types::Bool
  end
end
