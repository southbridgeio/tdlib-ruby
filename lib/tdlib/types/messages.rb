module TD::Types
  # Contains a list of messages.
  #
  # @attr total_count [Integer] Approximate total count of messages found.
  # @attr messages [Array<TD::Types::Message>, nil] List of messages; messages may be null.
  class Messages < Base
    attribute :total_count, TD::Types::Integer
    attribute :messages, TD::Types::Array.of(TD::Types::Message).optional.default(nil)
  end
end
