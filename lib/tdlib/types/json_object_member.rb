module TD::Types
  # Represents one member of a JSON object.
  #
  # @attr key [String] Member's key.
  # @attr value [TD::Types::JsonValue] Member's value.
  class JsonObjectMember < Base
    attribute :key, TD::Types::String
    attribute :value, TD::Types::JsonValue
  end
end
