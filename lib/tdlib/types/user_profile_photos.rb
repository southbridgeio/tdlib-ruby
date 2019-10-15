module TD::Types
  # Contains part of the list of user photos.
  #
  # @attr total_count [Integer] Total number of user profile photos.
  # @attr photos [Array<TD::Types::UserProfilePhoto>] A list of photos.
  class UserProfilePhotos < Base
    attribute :total_count, TD::Types::Integer
    attribute :photos, TD::Types::Array.of(TD::Types::UserProfilePhoto)
  end
end
