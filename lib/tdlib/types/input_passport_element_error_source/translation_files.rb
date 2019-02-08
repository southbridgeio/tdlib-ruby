module TD::Types
  # The translation of the document contains an error.
  # The error is considered resolved when the list of files changes.
  #
  # @attr file_hashes [Array<String>] Current hashes of all files with the translation.
  class InputPassportElementErrorSource::TranslationFiles < InputPassportElementErrorSource
    attribute :file_hashes, TD::Types::Array.of(TD::Types::String)
  end
end
