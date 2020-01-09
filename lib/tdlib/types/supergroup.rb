module TD::Types
  # Represents a supergroup or channel with zero or more members (subscribers in the case of channels).
  # From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and
  #   see the list of members, and posts from all administrators use the name and photo of the channel instead of individual
  #   names and profile photos.
  # Unlike supergroups, channels can have an unlimited number of subscribers.
  #
  # @attr id [Integer] Supergroup or channel identifier.
  # @attr username [String, nil] Username of the supergroup or channel; empty for private supergroups or channels.
  # @attr date [Integer] Point in time (Unix timestamp) when the current user joined, or the point in time when the
  #   supergroup or channel was created, in case the user is not a member.
  # @attr status [TD::Types::ChatMemberStatus] Status of the current user in the supergroup or channel; custom title
  #   will be always empty.
  # @attr member_count [Integer] Member count; 0 if unknown.
  #   Currently it is guaranteed to be known only if the supergroup or channel was found through SearchPublicChats.
  # @attr has_linked_chat [Boolean] True, if the channel has a discussion group, or the supergroup is the designated
  #   discussion group for a channel.
  # @attr has_location [Boolean] True, if the supergroup is connected to a location, i.e.
  #   the supergroup is a location-based supergroup.
  # @attr sign_messages [Boolean] True, if messages sent to the channel should contain information about the sender.
  #   This field is only applicable to channels.
  # @attr is_slow_mode_enabled [Boolean] True, if the slow mode is enabled in the supergroup.
  # @attr is_channel [Boolean] True, if the supergroup is a channel.
  # @attr is_verified [Boolean] True, if the supergroup or channel is verified.
  # @attr restriction_reason [String] If non-empty, contains a human-readable description of the reason why access to
  #   this supergroup or channel must be restricted.
  # @attr is_scam [Boolean] True, if many users reported this supergroup as a scam.
  class Supergroup < Base
    attribute :id, TD::Types::Integer
    attribute :username, TD::Types::String.optional.default(nil)
    attribute :date, TD::Types::Integer
    attribute :status, TD::Types::ChatMemberStatus
    attribute :member_count, TD::Types::Integer
    attribute :has_linked_chat, TD::Types::Bool
    attribute :has_location, TD::Types::Bool
    attribute :sign_messages, TD::Types::Bool
    attribute :is_slow_mode_enabled, TD::Types::Bool
    attribute :is_channel, TD::Types::Bool
    attribute :is_verified, TD::Types::Bool
    attribute :restriction_reason, TD::Types::String
    attribute :is_scam, TD::Types::Bool
  end
end
