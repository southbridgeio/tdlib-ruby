module TD::Types
  # A new incoming event; for bots only.
  #
  # @attr event [String] A JSON-serialized event.
  class Update::NewCustomEvent < Update
    attribute :event, TD::Types::String
  end
end
