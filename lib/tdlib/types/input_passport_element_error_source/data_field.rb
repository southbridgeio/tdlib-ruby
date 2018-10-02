module TD::Types
  # A data field contains an error.
  # The error is considered resolved when the field's value changes.
  #
  # @attr field_name [String] Field name.
  # @attr data_hash [String] Current data hash.
  class InputPassportElementErrorSource::DataField < InputPassportElementErrorSource
    attribute :field_name, TD::Types::String
    attribute :data_hash, TD::Types::String
  end
end
