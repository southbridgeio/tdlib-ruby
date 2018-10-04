module TD::Types
  # A message with a location.
  #
  # @attr location [TD::Types::Location] Message content.
  # @attr live_period [Integer] Time relative to the message sent date until which the location can be updated, in
  #   seconds.
  # @attr expires_in [Integer] Left time for which the location can be updated, in seconds.
  #   updateMessageContent is not sent when this field changes.
  class MessageContent::Location < MessageContent
    attribute :location, TD::Types::Location
    attribute :live_period, TD::Types::Integer
    attribute :expires_in, TD::Types::Integer
  end
end
