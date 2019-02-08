module TD::Types
  # A new incoming query; for bots only.
  #
  # @attr id [Integer] The query identifier.
  # @attr data [String] JSON-serialized query data.
  # @attr timeout [Integer] Query timeout.
  class Update::NewCustomQuery < Update
    attribute :id, TD::Types::Integer
    attribute :data, TD::Types::String
    attribute :timeout, TD::Types::Integer
  end
end
