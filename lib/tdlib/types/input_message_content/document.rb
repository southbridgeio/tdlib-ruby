module TD::Types
  # A document message (general file).
  #
  # @attr document [TD::Types::InputFile] Document to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail, nil] Document thumbnail, if available.
  # @attr caption [TD::Types::FormattedText] Document caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::Document < InputMessageContent
    attribute :document, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail.optional.default(nil)
    attribute :caption, TD::Types::FormattedText
  end
end
