module TD::Types
  # Represents a user contact.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr contact [Contact] A user contact.
  # @attr thumbnail [PhotoSize] Result thumbnail; may be null.
  class InlineQueryResult::Contact < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :contact, TD::Types::Contact
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
  end
end
