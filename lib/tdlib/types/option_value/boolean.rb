module TD::Types
  # Boolean option.
  #
  # @attr value [Boolean] The value of the option.
  class OptionValue::Boolean < OptionValue
    attribute :value, TD::Types::Bool
  end
end
