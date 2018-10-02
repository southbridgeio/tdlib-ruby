module TD::Types
  # Contains a list of chat events.
  #
  # @attr events [Array<ChatEvent>] List of events.
  class ChatEvents < Base
    attribute :events, TD::Types::Array.of(TD::Types::ChatEvent)
  end
end
