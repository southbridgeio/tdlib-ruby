module TD::Types
  # Represents a sticker.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr sticker [TD::Types::Sticker] Sticker.
  class InlineQueryResult::Sticker < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :sticker, TD::Types::Sticker
  end
end
