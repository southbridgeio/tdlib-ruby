module TD::Types
  # A message with information about a venue.
  #
  # @attr venue [Venue] Message content.
  class MessageContent::Venue < MessageContent
    attribute :venue, TD::Types::Venue
  end
end
