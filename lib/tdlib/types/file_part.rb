module TD::Types
  # Contains a part of a file.
  #
  # @attr data [String] File bytes.
  class FilePart < Base
    attribute :data, TD::Types::String
  end
end
