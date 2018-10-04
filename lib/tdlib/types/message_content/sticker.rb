module TD::Types
  # A sticker message.
  #
  # @attr sticker [TD::Types::Sticker] Message content.
  class MessageContent::Sticker < MessageContent
    attribute :sticker, TD::Types::Sticker
  end
end
