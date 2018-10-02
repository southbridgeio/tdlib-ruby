module TD::Types
  # Represents a set of filters used to obtain a chat event log.
  #
  # @attr message_edits [Boolean] True, if message edits should be returned.
  # @attr message_deletions [Boolean] True, if message deletions should be returned.
  # @attr message_pins [Boolean] True, if pin/unpin events should be returned.
  # @attr member_joins [Boolean] True, if members joining events should be returned.
  # @attr member_leaves [Boolean] True, if members leaving events should be returned.
  # @attr member_invites [Boolean] True, if invited member events should be returned.
  # @attr member_promotions [Boolean] True, if member promotion/demotion events should be returned.
  # @attr member_restrictions [Boolean] True, if member restricted/unrestricted/banned/unbanned events should be
  #   returned.
  # @attr info_changes [Boolean] True, if changes in chat information should be returned.
  # @attr setting_changes [Boolean] True, if changes in chat settings should be returned.
  class ChatEventLogFilters < Base
    attribute :message_edits, TD::Types::Bool
    attribute :message_deletions, TD::Types::Bool
    attribute :message_pins, TD::Types::Bool
    attribute :member_joins, TD::Types::Bool
    attribute :member_leaves, TD::Types::Bool
    attribute :member_invites, TD::Types::Bool
    attribute :member_promotions, TD::Types::Bool
    attribute :member_restrictions, TD::Types::Bool
    attribute :info_changes, TD::Types::Bool
    attribute :setting_changes, TD::Types::Bool
  end
end
