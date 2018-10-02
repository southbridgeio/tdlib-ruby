module TD::Types
  # A message with a location.
  #
  # @attr location [Location] Location to be sent.
  # @attr live_period [Integer] Period for which the location can be updated, in seconds; should bebetween 60 and 86400
  #   for a live location and 0 otherwise.
  class InputMessageContent::Location < InputMessageContent
    attribute :location, TD::Types::Location
    attribute :live_period, TD::Types::Integer
  end
end
