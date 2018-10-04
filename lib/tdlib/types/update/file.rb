module TD::Types
  # Information about a file was updated.
  #
  # @attr file [TD::Types::File] New data about the file.
  class Update::File < Update
    attribute :file, TD::Types::File
  end
end
