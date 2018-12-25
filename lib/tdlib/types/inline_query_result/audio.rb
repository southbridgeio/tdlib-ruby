module TD::Types
  # Represents an audio file.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr audio [TD::Types::Audio] Audio file.
  class InlineQueryResult::Audio < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :audio, TD::Types::Audio
  end
end
