module TD::Types
  # Describes the photo of a chat.
  #
  # @attr small [TD::Types::File] A small (160x160) chat photo.
  # @attr big [TD::Types::File] A big (640x640) chat photo.
  class ChatPhoto < Base
    attribute :small, TD::Types::File
    attribute :big, TD::Types::File
  end
end
