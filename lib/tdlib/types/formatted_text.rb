module TD::Types
  # A text with some entities.
  #
  # @attr text [String] The text.
  # @attr entities [Array<TextEntity>] Entities contained in the text.
  class FormattedText < Base
    attribute :text, TD::Types::String
    attribute :entities, TD::Types::Array.of(TD::Types::TextEntity)
  end
end
