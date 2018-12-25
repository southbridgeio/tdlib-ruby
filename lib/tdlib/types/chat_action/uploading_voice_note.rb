module TD::Types
  # The user is uploading a voice note.
  #
  # @attr progress [Integer] Upload progress, as a percentage.
  class ChatAction::UploadingVoiceNote < ChatAction
    attribute :progress, TD::Types::Integer
  end
end
