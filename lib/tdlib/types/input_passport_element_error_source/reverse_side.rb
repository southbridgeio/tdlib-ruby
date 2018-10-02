module TD::Types
  # The reverse side of the document contains an error.
  # The error is considered resolved when the file with the reverse side of the document changes.
  #
  # @attr file_hash [String] Current hash of the file containing the reverse side.
  class InputPassportElementErrorSource::ReverseSide < InputPassportElementErrorSource
    attribute :file_hash, TD::Types::String
  end
end
