module TD::Types
  # Contains the result of a custom request.
  #
  # @attr result [String] A JSON-serialized result.
  class CustomRequestResult < Base
    attribute :result, TD::Types::String
  end
end
