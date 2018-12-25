module TD::Types
  # A message with information about a venue.
  #
  # @attr venue [TD::Types::Venue] Venue to send.
  class InputMessageContent::Venue < InputMessageContent
    attribute :venue, TD::Types::Venue
  end
end
