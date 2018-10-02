module TD::Types
  # One of the data fields contains an error.
  # The error will be considered resolved when the value of the field changes.
  #
  # @attr field_name [String] Field name.
  class PassportElementErrorSource::DataField < PassportElementErrorSource
    attribute :field_name, TD::Types::String
  end
end
