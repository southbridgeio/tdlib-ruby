module TD::Types
  # Represents a chat event.
  #
  # @attr id [Integer] Chat event identifier.
  # @attr date [Integer] Point in time (Unix timestamp) when the event happened.
  # @attr user_id [Integer] Identifier of the user who performed the action that triggered the event.
  # @attr action [TD::Types::ChatEventAction] Action performed by the user.
  class ChatEvent < Base
    attribute :id, TD::Types::Integer
    attribute :date, TD::Types::Integer
    attribute :user_id, TD::Types::Integer
    attribute :action, TD::Types::ChatEventAction
  end
end
