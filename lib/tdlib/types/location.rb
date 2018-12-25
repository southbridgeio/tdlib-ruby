module TD::Types
  # Describes a location on planet Earth.
  #
  # @attr latitude [Float] Latitude of the location in degrees; as defined by the sender.
  # @attr longitude [Float] Longitude of the location, in degrees; as defined by the sender.
  class Location < Base
    attribute :latitude, TD::Types::Float
    attribute :longitude, TD::Types::Float
  end
end
