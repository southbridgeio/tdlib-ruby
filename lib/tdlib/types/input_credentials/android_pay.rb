module TD::Types
  # Applies if a user enters new credentials using Android Pay.
  #
  # @attr data [String] JSON-encoded data with the credential identifier.
  class InputCredentials::AndroidPay < InputCredentials
    attribute :data, TD::Types::String
  end
end
