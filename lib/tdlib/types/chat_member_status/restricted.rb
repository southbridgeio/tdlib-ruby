module TD::Types
  # The user is under certain restrictions in the chat.
  # Not supported in basic groups and channels.
  #
  # @attr is_member [Boolean] True, if the user is a member of the chat.
  # @attr restricted_until_date [Integer] Point in time (Unix timestamp) when restrictions will be lifted from the
  #   user; 0 if never.
  #   If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is
  #   considered to be restricted forever.
  # @attr can_send_messages [Boolean] True, if the user can send text messages, contacts, locations, and venues.
  # @attr can_send_media_messages [Boolean] True, if the user can send audio files, documents, photos, videos, video
  #   notes, and voice notes.
  #   Implies can_send_messages permissions.
  # @attr can_send_other_messages [Boolean] True, if the user can send animations, games, and stickers and use inline
  #   bots.
  #   Implies can_send_media_messages permissions.
  # @attr can_add_web_page_previews [Boolean] True, if the user may add a web page preview to his messages.
  #   Implies can_send_messages permissions.
  class ChatMemberStatus::Restricted < ChatMemberStatus
    attribute :is_member, TD::Types::Bool
    attribute :restricted_until_date, TD::Types::Integer
    attribute :can_send_messages, TD::Types::Bool
    attribute :can_send_media_messages, TD::Types::Bool
    attribute :can_send_other_messages, TD::Types::Bool
    attribute :can_add_web_page_previews, TD::Types::Bool
  end
end
