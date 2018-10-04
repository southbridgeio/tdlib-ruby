module TD::Types
  # Represents a file.
  #
  # @attr id [Integer] Unique file identifier.
  # @attr size [Integer] File size; 0 if unknown.
  # @attr expected_size [Integer] Expected file size in case the exact file size is unknown, but an approximate size is
  #   known.
  #   Can be used to show download/upload progress.
  # @attr local [TD::Types::LocalFile] Information about the local copy of the file.
  # @attr remote [TD::Types::RemoteFile] Information about the remote copy of the file.
  class File < Base
    attribute :id, TD::Types::Integer
    attribute :size, TD::Types::Integer
    attribute :expected_size, TD::Types::Integer
    attribute :local, TD::Types::LocalFile
    attribute :remote, TD::Types::RemoteFile
  end
end
