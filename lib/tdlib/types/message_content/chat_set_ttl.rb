module TD::Types
  # The TTL (Time To Live) setting messages in a secret chat has been changed.
  #
  # @attr ttl [Integer] New TTL.
  class MessageContent::ChatSetTtl < MessageContent
    attribute :ttl, TD::Types::Integer
  end
end
