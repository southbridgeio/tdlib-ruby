module TD::Types
  # The file contains an error.
  # The error is considered resolved when the file changes.
  #
  # @attr file_hash [String] Current hash of the file which has the error.
  class InputPassportElementErrorSource::File < InputPassportElementErrorSource
    attribute :file_hash, TD::Types::String
  end
end
