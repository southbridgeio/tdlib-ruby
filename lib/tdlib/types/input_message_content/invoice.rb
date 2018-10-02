module TD::Types
  # A message with an invoice; can be used only by bots and only in private chats.
  #
  # @attr invoice [Invoice] Invoice.
  # @attr title [String] Product title; 1-32 characters.
  # @attr description [String] Product description; 0-255 characters.
  # @attr photo_url [String] Product photo URL; optional.
  # @attr photo_size [Integer] Product photo size.
  # @attr photo_width [Integer] Product photo width.
  # @attr photo_height [Integer] Product photo height.
  # @attr payload [String] The invoice payload.
  # @attr provider_token [String] Payment provider token.
  # @attr provider_data [String] JSON-encoded data about the invoice, which will be shared with the payment provider.
  # @attr start_parameter [String] Unique invoice bot start_parameter for the generation of this invoice.
  class InputMessageContent::Invoice < InputMessageContent
    attribute :invoice, TD::Types::Invoice
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :photo_url, TD::Types::String.optional.default(nil)
    attribute :photo_size, TD::Types::Integer
    attribute :photo_width, TD::Types::Integer
    attribute :photo_height, TD::Types::Integer
    attribute :payload, TD::Types::String
    attribute :provider_token, TD::Types::String
    attribute :provider_data, TD::Types::String
    attribute :start_parameter, TD::Types::String
  end
end
