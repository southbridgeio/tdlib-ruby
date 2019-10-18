module TD::Types
  # Contains a list of backgrounds.
  #
  # @attr backgrounds [Array<TD::Types::Background>] A list of backgrounds.
  class Backgrounds < Base
    attribute :backgrounds, TD::Types::Array.of(TD::Types::Background)
  end
end
