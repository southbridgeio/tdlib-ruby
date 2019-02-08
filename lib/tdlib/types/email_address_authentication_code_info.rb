module TD::Types
  # Information about the email address authentication code that was sent.
  #
  # @attr email_address_pattern [String] Pattern of the email address to which an authentication code was sent.
  # @attr length [Integer] Length of the code; 0 if unknown.
  class EmailAddressAuthenticationCodeInfo < Base
    attribute :email_address_pattern, TD::Types::String
    attribute :length, TD::Types::Integer
  end
end
