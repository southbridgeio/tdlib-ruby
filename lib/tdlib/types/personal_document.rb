module TD::Types
  # A personal document, containing some information about a user.
  #
  # @attr files [Array<DatedFile>] List of files containing the pages of the document.
  # @attr translation [Array<DatedFile>] List of files containing a certified English translation of the document.
  class PersonalDocument < Base
    attribute :files, TD::Types::Array.of(TD::Types::DatedFile)
    attribute :translation, TD::Types::Array.of(TD::Types::DatedFile)
  end
end
