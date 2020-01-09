module TD::Types
  # Describes a chat located nearby.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr distance [Integer] Distance to the chat location in meters.
  class ChatNearby < Base
    attribute :chat_id, TD::Types::Integer
    attribute :distance, TD::Types::Integer
  end
end
