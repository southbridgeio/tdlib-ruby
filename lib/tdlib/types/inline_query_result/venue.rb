module TD::Types
  # Represents information about a venue.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr venue [Venue] Venue result.
  # @attr thumbnail [PhotoSize] Result thumbnail; may be null.
  class InlineQueryResult::Venue < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :venue, TD::Types::Venue
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
  end
end
