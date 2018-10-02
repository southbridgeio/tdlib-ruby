module TD::Types
  # The user is uploading a video.
  #
  # @attr progress [Integer] Upload progress, as a percentage.
  class ChatAction::UploadingVideo < ChatAction
    attribute :progress, TD::Types::Integer
  end
end
