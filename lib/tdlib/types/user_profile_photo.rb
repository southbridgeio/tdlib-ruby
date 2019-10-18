module TD::Types
  # Contains full information about a user profile photo.
  #
  # @attr id [Integer] Unique user profile photo identifier.
  # @attr added_date [Integer] Point in time (Unix timestamp) when the photo has been added.
  # @attr sizes [Array<TD::Types::PhotoSize>] Available variants of the user photo, in different sizes.
  class UserProfilePhoto < Base
    attribute :id, TD::Types::Integer
    attribute :added_date, TD::Types::Integer
    attribute :sizes, TD::Types::Array.of(TD::Types::PhotoSize)
  end
end
