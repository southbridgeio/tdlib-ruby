module TD::Types
  # Represents a list of emoji.
  #
  # @attr emojis [Array<String>] List of emojis.
  class Emojis < Base
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
