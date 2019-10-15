module TD::Types
  # One of files with the translation of the document contains an error.
  # The error will be considered resolved when the file changes.
  #
  # @attr file_index [Integer] Index of a file with the error.
  class PassportElementErrorSource::TranslationFile < PassportElementErrorSource
    attribute :file_index, TD::Types::Integer
  end
end
