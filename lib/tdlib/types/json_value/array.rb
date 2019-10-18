module TD::Types
  # Represents a JSON array.
  #
  # @attr values [Array<TD::Types::JsonValue>] The list of array elements.
  class JsonValue::Array < JsonValue
    attribute :values, TD::Types::Array.of(TD::Types::JsonValue)
  end
end
