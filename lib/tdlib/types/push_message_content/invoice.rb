module TD::Types
  # A message with an invoice from a bot.
  #
  # @attr price [String] Product price.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Invoice < PushMessageContent
    attribute :price, TD::Types::String
    attribute :is_pinned, TD::Types::Bool
  end
end
