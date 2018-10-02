module TD::Types
  # Contains full information about a user (except the full list of profile photos).
  #
  # @attr is_blocked [Boolean] True, if the user is blacklisted by the current user.
  # @attr can_be_called [Boolean] True, if the user can be called.
  # @attr has_private_calls [Boolean] True, if the user can't be called due to their privacy settings.
  # @attr bio [String] A short user bio.
  # @attr share_text [String] For bots, the text that is included with the link when users share the bot.
  # @attr group_in_common_count [Integer] Number of group chats where both the other user and the current user are a
  #   member; 0 for the current user.
  # @attr bot_info [BotInfo] If the user is a bot, information about the bot; may be null.
  class UserFullInfo < Base
    attribute :is_blocked, TD::Types::Bool
    attribute :can_be_called, TD::Types::Bool
    attribute :has_private_calls, TD::Types::Bool
    attribute :bio, TD::Types::String
    attribute :share_text, TD::Types::String
    attribute :group_in_common_count, TD::Types::Integer
    attribute :bot_info, TD::Types::BotInfo.optional.default(nil)
  end
end
