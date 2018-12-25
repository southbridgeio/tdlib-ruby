module TD::Types
  # The user is uploading a photo.
  #
  # @attr progress [Integer] Upload progress, as a percentage.
  class ChatAction::UploadingPhoto < ChatAction
    attribute :progress, TD::Types::Integer
  end
end
