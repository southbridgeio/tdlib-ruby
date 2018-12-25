module TD::Types
  # Contains full information about a supergroup or channel.
  #
  # @attr description [String] Supergroup or channel description.
  # @attr member_count [Integer] Number of members in the supergroup or channel; 0 if unknown.
  # @attr administrator_count [Integer] Number of privileged users in the supergroup or channel; 0 if unknown.
  # @attr restricted_count [Integer] Number of restricted users in the supergroup; 0 if unknown.
  # @attr banned_count [Integer] Number of users banned from chat; 0 if unknown.
  # @attr can_get_members [Boolean] True, if members of the chat can be retrieved.
  # @attr can_set_username [Boolean] True, if the chat can be made public.
  # @attr can_set_sticker_set [Boolean] True, if the supergroup sticker set can be changed.
  # @attr is_all_history_available [Boolean] True, if new chat members will have access to old messages.
  #   In public supergroups and both public and private channels, old messages are always available, so this option
  #   affects only private supergroups.
  #   The value of this field is only available for chat administrators.
  # @attr sticker_set_id [Integer] Identifier of the supergroup sticker set; 0 if none.
  # @attr invite_link [String] Invite link for this chat.
  # @attr pinned_message_id [Integer] Identifier of the pinned message in the chat; 0 if none.
  # @attr upgraded_from_basic_group_id [Integer] Identifier of the basic group from which supergroup was upgraded; 0 if
  #   none.
  # @attr upgraded_from_max_message_id [Integer] Identifier of the last message in the basic group from which
  #   supergroup was upgraded; 0 if none.
  class SupergroupFullInfo < Base
    attribute :description, TD::Types::String
    attribute :member_count, TD::Types::Integer
    attribute :administrator_count, TD::Types::Integer
    attribute :restricted_count, TD::Types::Integer
    attribute :banned_count, TD::Types::Integer
    attribute :can_get_members, TD::Types::Bool
    attribute :can_set_username, TD::Types::Bool
    attribute :can_set_sticker_set, TD::Types::Bool
    attribute :is_all_history_available, TD::Types::Bool
    attribute :sticker_set_id, TD::Types::Integer
    attribute :invite_link, TD::Types::String
    attribute :pinned_message_id, TD::Types::Integer
    attribute :upgraded_from_basic_group_id, TD::Types::Integer
    attribute :upgraded_from_max_message_id, TD::Types::Integer
  end
end
