module TD::Types
  # A message with an invoice from a bot.
  #
  # @attr title [String] Product title.
  # @attr description [String] Product description.
  # @attr photo [Photo] Product photo; may be null.
  # @attr currency [String] Currency for the product price.
  # @attr total_amount [Integer] Product total price in the minimal quantity of the currency.
  # @attr start_parameter [String] Unique invoice bot start_parameter.
  #   To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}.
  # @attr is_test [Boolean] True, if the invoice is a test invoice.
  # @attr need_shipping_address [Boolean] True, if the shipping address should be specified.
  # @attr receipt_message_id [Integer] The identifier of the message with the receipt, after the product has been
  #   purchased.
  class MessageContent::Invoice < MessageContent
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :currency, TD::Types::String
    attribute :total_amount, TD::Types::Integer
    attribute :start_parameter, TD::Types::String
    attribute :is_test, TD::Types::Bool
    attribute :need_shipping_address, TD::Types::Bool
    attribute :receipt_message_id, TD::Types::Integer
  end
end
