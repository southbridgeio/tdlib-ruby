module TD::Types
  # A personal document to be saved to Telegram Passport.
  #
  # @attr files [Array<TD::Types::InputFile>] List of files containing the pages of the document.
  # @attr translation [Array<TD::Types::InputFile>] List of files containing a certified English translation of the
  #   document.
  class InputPersonalDocument < Base
    attribute :files, TD::Types::Array.of(TD::Types::InputFile)
    attribute :translation, TD::Types::Array.of(TD::Types::InputFile)
  end
end
