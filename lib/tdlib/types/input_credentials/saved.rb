module TD::Types
  # Applies if a user chooses some previously saved payment credentials.
  # To use their previously saved credentials, the user must have a valid temporary password.
  #
  # @attr saved_credentials_id [String] Identifier of the saved credentials.
  class InputCredentials::Saved < InputCredentials
    attribute :saved_credentials_id, TD::Types::String
  end
end
