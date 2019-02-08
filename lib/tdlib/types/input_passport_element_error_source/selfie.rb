module TD::Types
  # The selfie contains an error.
  # The error is considered resolved when the file with the selfie changes.
  #
  # @attr file_hash [String] Current hash of the file containing the selfie.
  class InputPassportElementErrorSource::Selfie < InputPassportElementErrorSource
    attribute :file_hash, TD::Types::String
  end
end
