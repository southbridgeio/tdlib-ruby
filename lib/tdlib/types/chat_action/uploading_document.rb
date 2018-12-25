module TD::Types
  # The user is uploading a document.
  #
  # @attr progress [Integer] Upload progress, as a percentage.
  class ChatAction::UploadingDocument < ChatAction
    attribute :progress, TD::Types::Integer
  end
end
