module TD::Types
  # An authentication code is delivered via an SMS message to the specified phone number.
  #
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::Sms < AuthenticationCodeType
    attribute :length, TD::Types::Integer
  end
end
