module TD::Types
  # Contains information about a chat invite link.
  #
  # @attr chat_id [Integer] Chat identifier of the invite link; 0 if the user is not a member of this chat.
  # @attr type [TD::Types::ChatType] Contains information about the type of the chat.
  # @attr title [String] Title of the chat.
  # @attr photo [TD::Types::ChatPhoto] Chat photo; may be null.
  # @attr member_count [Integer] Number of members.
  # @attr member_user_ids [Array<Integer>] User identifiers of some chat members that may be known to the current user.
  # @attr is_public [Boolean] True, if the chat is a public supergroup or channel with a username.
  class ChatInviteLinkInfo < Base
    attribute :chat_id, TD::Types::Integer
    attribute :type, TD::Types::ChatType
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :member_count, TD::Types::Integer
    attribute :member_user_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :is_public, TD::Types::Bool
  end
end
