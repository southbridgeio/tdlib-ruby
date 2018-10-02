module TD::Types
  # Describes a document of any type.
  #
  # @attr file_name [String] Original name of the file; as defined by the sender.
  # @attr mime_type [String] MIME type of the file; as defined by the sender.
  # @attr thumbnail [PhotoSize] Document thumbnail; as defined by the sender; may be null.
  # @attr document [File] File containing the document.
  class Document < Base
    attribute :file_name, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :document, TD::Types::File
  end
end
