module TD::Types
  # A video.
  #
  # @attr video [TD::Types::Video, nil] Video file; may be null.
  # @attr caption [TD::Types::PageBlockCaption] Video caption.
  # @attr need_autoplay [Boolean] True, if the video should be played automatically.
  # @attr is_looped [Boolean] True, if the video should be looped.
  class PageBlock::Video < PageBlock
    attribute :video, TD::Types::Video.optional.default(nil)
    attribute :caption, TD::Types::PageBlockCaption
    attribute :need_autoplay, TD::Types::Bool
    attribute :is_looped, TD::Types::Bool
  end
end
