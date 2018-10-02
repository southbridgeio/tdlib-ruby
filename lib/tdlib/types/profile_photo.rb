module TD::Types
  # Describes a user profile photo.
  #
  # @attr id [Integer] Photo identifier; 0 for an empty photo.
  #   Can be used to find a photo in a list of userProfilePhotos.
  # @attr small [File] A small (160x160) user profile photo.
  # @attr big [File] A big (640x640) user profile photo.
  class ProfilePhoto < Base
    attribute :id, TD::Types::Integer
    attribute :small, TD::Types::File
    attribute :big, TD::Types::File
  end
end
