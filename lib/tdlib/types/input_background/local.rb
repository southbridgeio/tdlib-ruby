module TD::Types
  # A background from a local file.
  #
  # @attr background [TD::Types::InputFile] Background file to use.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are supported.
  #   The file nust be in JPEG format for wallpapers and in PNG format for patterns.
  class InputBackground::Local < InputBackground
    attribute :background, TD::Types::InputFile
  end
end
