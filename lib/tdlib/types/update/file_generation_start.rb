module TD::Types
  # The file generation process needs to be started by the client.
  #
  # @attr generation_id [Integer] Unique identifier for the generation process.
  # @attr original_path [String] The path to a file from which a new file is generated; may be empty.
  # @attr destination_path [String] The path to a file that should be created and where the new file should be
  #   generated.
  # @attr conversion [String] String specifying the conversion applied to the original file.
  #   If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which should be downloaded by
  #   the client.
  class Update::FileGenerationStart < Update
    attribute :generation_id, TD::Types::Integer
    attribute :original_path, TD::Types::String.optional.default(nil)
    attribute :destination_path, TD::Types::String
    attribute :conversion, TD::Types::String
  end
end
