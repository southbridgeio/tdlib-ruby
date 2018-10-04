module TD::Types
  # File with the date it was uploaded.
  #
  # @attr file [TD::Types::File] The file.
  # @attr date [Integer] Point in time (Unix timestamp) when the file was uploaded.
  class DatedFile < Base
    attribute :file, TD::Types::File
    attribute :date, TD::Types::Integer
  end
end
