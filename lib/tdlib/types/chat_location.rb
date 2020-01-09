module TD::Types
  # Represents a location to which a chat is connected.
  #
  # @attr location [TD::Types::Location] The location.
  # @attr address [String] Location address; 1-64 characters, as defined by the chat owner.
  class ChatLocation < Base
    attribute :location, TD::Types::Location
    attribute :address, TD::Types::String
  end
end
