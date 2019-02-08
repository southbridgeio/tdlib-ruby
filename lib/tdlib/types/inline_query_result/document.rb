module TD::Types
  # Represents a document.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr document [TD::Types::Document] Document.
  # @attr title [String] Document title.
  # @attr description [String] Document description.
  class InlineQueryResult::Document < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :document, TD::Types::Document
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
  end
end
