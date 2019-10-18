module TD::Types
  # Contains a list of available TDLib internal log tags.
  #
  # @attr tags [Array<String>] List of log tags.
  class LogTags < Base
    attribute :tags, TD::Types::Array.of(TD::Types::String)
  end
end
