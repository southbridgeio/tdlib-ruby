module TD::Types
  # The element contains an error in an unspecified place.
  # The error will be considered resolved when new data is added.
  #
  # @attr element_hash [String] Current hash of the entire element.
  class InputPassportElementErrorSource::Unspecified < InputPassportElementErrorSource
    attribute :element_hash, TD::Types::String
  end
end
