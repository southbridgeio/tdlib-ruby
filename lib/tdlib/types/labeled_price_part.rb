module TD::Types
  # Portion of the price of a product (e.g., "delivery cost", "tax amount").
  #
  # @attr label [String] Label for this portion of the product price.
  # @attr amount [Integer] Currency amount in minimal quantity of the currency.
  class LabeledPricePart < Base
    attribute :label, TD::Types::String
    attribute :amount, TD::Types::Integer
  end
end
