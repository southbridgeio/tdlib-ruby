module TD::Types
  # Represents a list of chats.
  #
  # @attr chat_ids [Array<Integer>] List of chat identifiers.
  class Chats < Base
    attribute :chat_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
