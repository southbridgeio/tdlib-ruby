module TD::Types
  # A chat's is_sponsored field has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr is_sponsored [Boolean] New value of is_sponsored.
  # @attr order [Integer] New value of chat order.
  class Update::ChatIsSponsored < Update
    attribute :chat_id, TD::Types::Integer
    attribute :is_sponsored, TD::Types::Bool
    attribute :order, TD::Types::Integer
  end
end
