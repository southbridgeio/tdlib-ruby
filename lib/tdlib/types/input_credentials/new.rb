module TD::Types
  # Applies if a user enters new credentials on a payment provider website.
  #
  # @attr data [String] Contains JSON-encoded data with a credential identifier from the payment provider.
  # @attr allow_save [Boolean] True, if the credential identifier can be saved on the server side.
  class InputCredentials::New < InputCredentials
    attribute :data, TD::Types::String
    attribute :allow_save, TD::Types::Bool
  end
end
