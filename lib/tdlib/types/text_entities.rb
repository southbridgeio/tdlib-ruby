module TD::Types
  # Contains a list of text entities.
  #
  # @attr entities [Array<TextEntity>] List of text entities.
  class TextEntities < Base
    attribute :entities, TD::Types::Array.of(TD::Types::TextEntity)
  end
end
