module TD::Types
  # Represents a video.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr video [TD::Types::Video] Video.
  # @attr title [String] Title of the video.
  # @attr description [String] Description of the video.
  class InlineQueryResult::Video < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :video, TD::Types::Video
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
  end
end
