module TD::Types
  # A message with a game; not supported for channels or secret chats.
  #
  # @attr bot_user_id [Integer] User identifier of the bot that owns the game.
  # @attr game_short_name [String] Short name of the game.
  class InputMessageContent::Game < InputMessageContent
    attribute :bot_user_id, TD::Types::Integer
    attribute :game_short_name, TD::Types::String
  end
end
