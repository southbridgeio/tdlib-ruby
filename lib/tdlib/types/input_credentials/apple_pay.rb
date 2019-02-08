module TD::Types
  # Applies if a user enters new credentials using Apple Pay.
  #
  # @attr data [String] JSON-encoded data with the credential identifier.
  class InputCredentials::ApplePay < InputCredentials
    attribute :data, TD::Types::String
  end
end
