module TD::Types
  # An option changed its value.
  #
  # @attr name [String] The option name.
  # @attr value [TD::Types::OptionValue] The new option value.
  class Update::Option < Update
    attribute :name, TD::Types::String
    attribute :value, TD::Types::OptionValue
  end
end
