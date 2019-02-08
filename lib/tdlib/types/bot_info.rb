module TD::Types
  # Provides information about a bot and its supported commands.
  #
  # @attr description [String] Long description shown on the user info page.
  # @attr commands [Array<TD::Types::BotCommand>] A list of commands supported by the bot.
  class BotInfo < Base
    attribute :description, TD::Types::String
    attribute :commands, TD::Types::Array.of(TD::Types::BotCommand)
  end
end
