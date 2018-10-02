module TD::Types
  # An authentication code is delivered via a phone call to the specified phone number.
  #
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::Call < AuthenticationCodeType
    attribute :length, TD::Types::Integer
  end
end
