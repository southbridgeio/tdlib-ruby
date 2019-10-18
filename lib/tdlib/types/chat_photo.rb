module TD::Types
  # Describes the photo of a chat.
  #
  # @attr small [TD::Types::File] A small (160x160) chat photo.
  #   The file can be downloaded only before the photo is changed.
  # @attr big [TD::Types::File] A big (640x640) chat photo.
  #   The file can be downloaded only before the photo is changed.
  class ChatPhoto < Base
    attribute :small, TD::Types::File
    attribute :big, TD::Types::File
  end
end
