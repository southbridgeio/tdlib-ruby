module TD::Types
  # The log is written to a file.
  #
  # @attr path [String] Path to the file to where the internal TDLib log will be written.
  # @attr max_file_size [Integer] The maximum size of the file to where the internal TDLib log is written before the
  #   file will be auto-rotated.
  class LogStream::File < LogStream
    attribute :path, TD::Types::String
    attribute :max_file_size, TD::Types::Integer
  end
end
