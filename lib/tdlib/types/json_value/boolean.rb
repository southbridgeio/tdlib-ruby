module TD::Types
  # Represents a boolean JSON value.
  #
  # @attr value [Boolean] The value.
  class JsonValue::Boolean < JsonValue
    attribute :value, TD::Types::Bool
  end
end
