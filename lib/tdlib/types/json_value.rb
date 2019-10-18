module TD::Types
  # Represents a JSON value.
  class JsonValue < Base
    %w[
      null
      boolean
      number
      string
      array
      object
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/json_value/#{type}"
    end
  end
end
