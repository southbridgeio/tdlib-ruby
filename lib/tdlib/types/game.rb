module TD::Types
  # Describes a game.
  #
  # @attr id [Integer] Game ID.
  # @attr short_name [String] Game short name.
  #   To share a game use the URL https://t.me/{bot_username}?game={game_short_name}.
  # @attr title [String] Game title.
  # @attr text [TD::Types::FormattedText] Game text, usually containing scoreboards for a game.
  # @attr description [String] Game description.
  # @attr photo [TD::Types::Photo] Game photo.
  # @attr animation [TD::Types::Animation, nil] Game animation; may be null.
  class Game < Base
    attribute :id, TD::Types::Integer
    attribute :short_name, TD::Types::String
    attribute :title, TD::Types::String
    attribute :text, TD::Types::FormattedText
    attribute :description, TD::Types::String
    attribute :photo, TD::Types::Photo
    attribute :animation, TD::Types::Animation.optional.default(nil)
  end
end
