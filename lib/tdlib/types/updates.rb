module TD::Types
  # Contains a list of updates.
  #
  # @attr updates [Array<TD::Types::Update>] List of updates.
  class Updates < Base
    attribute :updates, TD::Types::Array.of(TD::Types::Update)
  end
end
