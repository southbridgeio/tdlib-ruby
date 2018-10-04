module TD::Types
  # A user with information about joining/leaving a chat.
  #
  # @attr user_id [Integer] User identifier of the chat member.
  # @attr inviter_user_id [Integer] Identifier of a user that invited/promoted/banned this member in the chat; 0 if
  #   unknown.
  # @attr joined_chat_date [Integer] Point in time (Unix timestamp) when the user joined a chat.
  # @attr status [TD::Types::ChatMemberStatus] Status of the member in the chat.
  # @attr bot_info [TD::Types::BotInfo] If the user is a bot, information about the bot; may be null.
  #   Can be null even for a bot if the bot is not a chat member.
  class ChatMember < Base
    attribute :user_id, TD::Types::Integer
    attribute :inviter_user_id, TD::Types::Integer
    attribute :joined_chat_date, TD::Types::Integer
    attribute :status, TD::Types::ChatMemberStatus
    attribute :bot_info, TD::Types::BotInfo.optional.default(nil)
  end
end
