module TD::Types
  # The file contains an error.
  # The error will be considered resolved when the file changes.
  #
  # @attr file_index [Integer] Index of a file with the error.
  class PassportElementErrorSource::File < PassportElementErrorSource
    attribute :file_index, TD::Types::Integer
  end
end
