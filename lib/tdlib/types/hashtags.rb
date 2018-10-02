module TD::Types
  # Contains a list of hashtags.
  #
  # @attr hashtags [Array<String>] A list of hashtags.
  class Hashtags < Base
    attribute :hashtags, TD::Types::Array.of(TD::Types::String)
  end
end
