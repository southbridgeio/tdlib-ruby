module TD::Types
  # A message has been pinned.
  #
  # @attr message_id [Integer] Identifier of the pinned message, can be an identifier of a deleted message or 0.
  class MessageContent::PinMessage < MessageContent
    attribute :message_id, TD::Types::Integer
  end
end
