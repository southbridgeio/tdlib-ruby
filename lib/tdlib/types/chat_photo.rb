module TD::Types
  # Describes the photo of a chat.
  #
  # @attr small [File] A small (160x160) chat photo.
  # @attr big [File] A big (640x640) chat photo.
  class ChatPhoto < Base
    attribute :small, TD::Types::File
    attribute :big, TD::Types::File
  end
end
