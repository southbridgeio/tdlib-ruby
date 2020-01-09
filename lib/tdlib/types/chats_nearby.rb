module TD::Types
  # Represents a list of chats located nearby.
  #
  # @attr users_nearby [Array<TD::Types::ChatNearby>] List of users nearby.
  # @attr supergroups_nearby [Array<TD::Types::ChatNearby>] List of location-based supergroups nearby.
  class ChatsNearby < Base
    attribute :users_nearby, TD::Types::Array.of(TD::Types::ChatNearby)
    attribute :supergroups_nearby, TD::Types::Array.of(TD::Types::ChatNearby)
  end
end
