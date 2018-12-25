module TD::Types
  # The list of attached files contains an error.
  # The error is considered resolved when the file list changes.
  #
  # @attr file_hashes [Array<String>] Current hashes of all attached files.
  class InputPassportElementErrorSource::Files < InputPassportElementErrorSource
    attribute :file_hashes, TD::Types::Array.of(TD::Types::String)
  end
end
