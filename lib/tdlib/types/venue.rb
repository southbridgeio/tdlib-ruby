module TD::Types
  # Describes a venue.
  #
  # @attr location [TD::Types::Location] Venue location; as defined by the sender.
  # @attr title [String] Venue name; as defined by the sender.
  # @attr address [String] Venue address; as defined by the sender.
  # @attr provider [String] Provider of the venue database; as defined by the sender.
  #   Currently only "foursquare" needs to be supported.
  # @attr id [String] Identifier of the venue in the provider database; as defined by the sender.
  # @attr type [String] Type of the venue in the provider database; as defined by the sender.
  class Venue < Base
    attribute :location, TD::Types::Location
    attribute :title, TD::Types::String
    attribute :address, TD::Types::String
    attribute :provider, TD::Types::String
    attribute :id, TD::Types::String
    attribute :type, TD::Types::String
  end
end
