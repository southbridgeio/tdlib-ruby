module TD::Types
  # An updated chat photo.
  #
  # @attr photo [TD::Types::Photo] New chat photo.
  class MessageContent::ChatChangePhoto < MessageContent
    attribute :photo, TD::Types::Photo
  end
end
