module TD::Types
  # Contains the response of a request to TON lite server.
  #
  # @attr response [String] The response.
  class TonLiteServerResponse < Base
    attribute :response, TD::Types::String
  end
end
