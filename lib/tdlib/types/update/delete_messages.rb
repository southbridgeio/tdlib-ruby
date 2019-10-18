module TD::Types
  # Some messages were deleted.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_ids [Array<Integer>] Identifiers of the deleted messages.
  # @attr is_permanent [Boolean] True, if the messages are permanently deleted by a user (as opposed to just becoming
  #   inaccessible).
  # @attr from_cache [Boolean] True, if the messages are deleted only from the cache and can possibly be retrieved
  #   again in the future.
  class Update::DeleteMessages < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :is_permanent, TD::Types::Bool
    attribute :from_cache, TD::Types::Bool
  end
end
