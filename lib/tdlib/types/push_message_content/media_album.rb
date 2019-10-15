module TD::Types
  # A media album.
  #
  # @attr total_count [Integer] Number of messages in the album.
  # @attr has_photos [Boolean] True, if the album has at least one photo.
  # @attr has_videos [Boolean] True, if the album has at least one video.
  class PushMessageContent::MediaAlbum < PushMessageContent
    attribute :total_count, TD::Types::Integer
    attribute :has_photos, TD::Types::Bool
    attribute :has_videos, TD::Types::Bool
  end
end
