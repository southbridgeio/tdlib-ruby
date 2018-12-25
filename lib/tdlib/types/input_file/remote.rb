module TD::Types
  # A file defined by its remote ID.
  #
  # @attr id [String] Remote file identifier.
  class InputFile::Remote < InputFile
    attribute :id, TD::Types::String
  end
end
