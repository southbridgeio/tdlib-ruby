module TD::Types
  # An updated chat photo.
  #
  # @attr photo [Photo] New chat photo.
  class MessageContent::ChatChangePhoto < MessageContent
    attribute :photo, TD::Types::Photo
  end
end
