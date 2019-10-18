module TD::Types
  # An animation.
  #
  # @attr animation [TD::Types::Animation, nil] Animation file; may be null.
  # @attr caption [TD::Types::PageBlockCaption] Animation caption.
  # @attr need_autoplay [Boolean] True, if the animation should be played automatically.
  class PageBlock::Animation < PageBlock
    attribute :animation, TD::Types::Animation.optional.default(nil)
    attribute :caption, TD::Types::PageBlockCaption
    attribute :need_autoplay, TD::Types::Bool
  end
end
