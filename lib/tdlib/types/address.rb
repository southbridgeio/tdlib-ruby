module TD::Types
  # Describes an address.
  #
  # @attr country_code [String] A two-letter ISO 3166-1 alpha-2 country code.
  # @attr state [String] State, if applicable.
  # @attr city [String] City.
  # @attr street_line1 [String] First line of the address.
  # @attr street_line2 [String] Second line of the address.
  # @attr postal_code [String] Address postal code.
  class Address < Base
    attribute :country_code, TD::Types::String
    attribute :state, TD::Types::String
    attribute :city, TD::Types::String
    attribute :street_line1, TD::Types::String
    attribute :street_line2, TD::Types::String
    attribute :postal_code, TD::Types::String
  end
end
