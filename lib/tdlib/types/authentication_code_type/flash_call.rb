module TD::Types
  # An authentication code is delivered by an immediately cancelled call to the specified phone number.
  # The number from which the call was made is the code.
  #
  # @attr pattern [String] Pattern of the phone number from which the call will be made.
  class AuthenticationCodeType::FlashCall < AuthenticationCodeType
    attribute :pattern, TD::Types::String
  end
end
