module TD::Types
  # Represents a list of animations.
  #
  # @attr animations [Array<TD::Types::Animation>] List of animations.
  class Animations < Base
    attribute :animations, TD::Types::Array.of(TD::Types::Animation)
  end
end
