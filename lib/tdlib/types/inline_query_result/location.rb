module TD::Types
  # Represents a point on the map.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr location [TD::Types::Location] Location result.
  # @attr title [String] Title of the result.
  # @attr thumbnail [TD::Types::PhotoSize, nil] Result thumbnail; may be null.
  class InlineQueryResult::Location < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :location, TD::Types::Location
    attribute :title, TD::Types::String
    attribute :thumbnail, TD::Types::PhotoSize.optional.default(nil)
  end
end
