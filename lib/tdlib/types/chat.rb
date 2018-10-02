module TD::Types
  # A chat.
  # (Can be a private chat, basic group, supergroup, or secret chat).
  #
  # @attr id [Integer] Chat unique identifier.
  # @attr type [ChatType] Type of the chat.
  # @attr title [String] Chat title.
  # @attr photo [ChatPhoto] Chat photo; may be null.
  # @attr last_message [Message] Last message in the chat; may be null.
  # @attr order [Integer] Descending parameter by which chats are sorted in the main chat list.
  #   If the order number of two chats is the same, they must be sorted in descending order by ID.
  #   If 0, the position of the chat in the list is undetermined.
  # @attr is_pinned [Boolean] True, if the chat is pinned.
  # @attr is_marked_as_unread [Boolean] True, if the chat is marked as unread.
  # @attr is_sponsored [Boolean] True, if the chat is sponsored by the user's MTProxy server.
  # @attr can_be_reported [Boolean] True, if the chat can be reported to Telegram moderators through reportChat.
  # @attr default_disable_notification [Boolean] Default value of the disable_notification parameter, used when a
  #   message is sent to the chat.
  # @attr unread_count [Integer] Number of unread messages in the chat.
  # @attr last_read_inbox_message_id [Integer] Identifier of the last read incoming message.
  # @attr last_read_outbox_message_id [Integer] Identifier of the last read outgoing message.
  # @attr unread_mention_count [Integer] Number of unread messages with a mention/reply in the chat.
  # @attr notification_settings [ChatNotificationSettings] Notification settings for this chat.
  # @attr reply_markup_message_id [Integer] Identifier of the message from which reply markup needs to be used; 0 if
  #   there is no default custom reply markup in the chat.
  # @attr draft_message [DraftMessage] A draft of a message in the chat; may be null.
  # @attr client_data [String] Contains client-specific data associated with the chat.
  #   (For example, the chat position or local chat notification settings can be stored here.) Persistent if a message
  #   database is used.
  class Chat < Base
    attribute :id, TD::Types::Integer
    attribute :type, TD::Types::ChatType
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :order, TD::Types::Integer
    attribute :is_pinned, TD::Types::Bool
    attribute :is_marked_as_unread, TD::Types::Bool
    attribute :is_sponsored, TD::Types::Bool
    attribute :can_be_reported, TD::Types::Bool
    attribute :default_disable_notification, TD::Types::Bool
    attribute :unread_count, TD::Types::Integer
    attribute :last_read_inbox_message_id, TD::Types::Integer
    attribute :last_read_outbox_message_id, TD::Types::Integer
    attribute :unread_mention_count, TD::Types::Integer
    attribute :notification_settings, TD::Types::ChatNotificationSettings
    attribute :reply_markup_message_id, TD::Types::Integer
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
    attribute :client_data, TD::Types::String
  end
end
