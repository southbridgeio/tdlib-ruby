module TD::Types
  # Contains auto-download settings.
  #
  # @attr is_auto_download_enabled [Boolean] True, if the auto-download is enabled.
  # @attr max_photo_file_size [Integer] The maximum size of a photo file to be auto-downloaded.
  # @attr max_video_file_size [Integer] The maximum size of a video file to be auto-downloaded.
  # @attr max_other_file_size [Integer] The maximum size of other file types to be auto-downloaded.
  # @attr video_upload_bitrate [Integer] The maximum suggested bitrate for uploaded videos.
  # @attr preload_large_videos [Boolean] True, if the beginning of videos needs to be preloaded for instant playback.
  # @attr preload_next_audio [Boolean] True, if the next audio track needs to be preloaded while the user is listening
  #   to an audio file.
  # @attr use_less_data_for_calls [Boolean] True, if "use less data for calls" option needs to be enabled.
  class AutoDownloadSettings < Base
    attribute :is_auto_download_enabled, TD::Types::Bool
    attribute :max_photo_file_size, TD::Types::Integer
    attribute :max_video_file_size, TD::Types::Integer
    attribute :max_other_file_size, TD::Types::Integer
    attribute :video_upload_bitrate, TD::Types::Integer
    attribute :preload_large_videos, TD::Types::Bool
    attribute :preload_next_audio, TD::Types::Bool
    attribute :use_less_data_for_calls, TD::Types::Bool
  end
end
