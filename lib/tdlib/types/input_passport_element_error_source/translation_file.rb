module TD::Types
  # One of the files containing the translation of the document contains an error.
  # The error is considered resolved when the file with the translation changes.
  #
  # @attr file_hash [String] Current hash of the file containing the translation.
  class InputPassportElementErrorSource::TranslationFile < InputPassportElementErrorSource
    attribute :file_hash, TD::Types::String
  end
end
