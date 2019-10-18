module TD::Types
  # Represents a JSON object.
  #
  # @attr members [Array<TD::Types::JsonObjectMember>] The list of object members.
  class JsonValue::Object < JsonValue
    attribute :members, TD::Types::Array.of(TD::Types::JsonObjectMember)
  end
end
