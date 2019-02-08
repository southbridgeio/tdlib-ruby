module TD::Types
  # The front side of the document contains an error.
  # The error is considered resolved when the file with the front side of the document changes.
  #
  # @attr file_hash [String] Current hash of the file containing the front side.
  class InputPassportElementErrorSource::FrontSide < InputPassportElementErrorSource
    attribute :file_hash, TD::Types::String
  end
end
