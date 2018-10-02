module TD::Types
  # Contains a list of messages found by a search.
  #
  # @attr messages [Array<Message>] List of messages.
  # @attr next_from_search_id [Integer] Value to pass as from_search_id to get more results.
  class FoundMessages < Base
    attribute :messages, TD::Types::Array.of(TD::Types::Message)
    attribute :next_from_search_id, TD::Types::Integer
  end
end
