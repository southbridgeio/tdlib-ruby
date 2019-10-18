module TD::Types
  # Describes a document of any type.
  #
  # @attr file_name [String] Original name of the file; as defined by the sender.
  # @attr mime_type [String] MIME type of the file; as defined by the sender.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Document minithumbnail; may be null.
  # @attr thumbnail [TD::Types::PhotoSize, nil] Document thumbnail in JPEG or PNG format (PNG will be used only for
  #   background patterns); as defined by the sender; may be null.
  # @attr document [TD::Types::File] File containing the document.
  class Document < Base
    attribute :file_name, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
    attribute :document, TD::Types::File
  end
end
