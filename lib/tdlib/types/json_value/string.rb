module TD::Types
  # Represents a string JSON value.
  #
  # @attr value [String] The value.
  class JsonValue::String < JsonValue
    attribute :value, TD::Types::String
  end
end
