module TD::Types
  # A sticker message.
  #
  # @attr sticker [Sticker] Message content.
  class MessageContent::Sticker < MessageContent
    attribute :sticker, TD::Types::Sticker
  end
end
