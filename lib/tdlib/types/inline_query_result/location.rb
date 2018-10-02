module TD::Types
  # Represents a point on the map.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr location [Location] Location result.
  # @attr title [String] Title of the result.
  # @attr thumbnail [PhotoSize] Result thumbnail; may be null.
  class InlineQueryResult::Location < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :location, TD::Types::Location
    attribute :title, TD::Types::String
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
  end
end
