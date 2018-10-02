module TD::Types
  # The user is uploading a video note.
  #
  # @attr progress [Integer] Upload progress, as a percentage.
  class ChatAction::UploadingVideoNote < ChatAction
    attribute :progress, TD::Types::Integer
  end
end
