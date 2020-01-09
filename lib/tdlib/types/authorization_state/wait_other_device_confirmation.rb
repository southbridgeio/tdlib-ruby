module TD::Types
  # The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link.
  #
  # @attr link [String] A tg:// URL for the QR code.
  #   The link will be updated frequently.
  class AuthorizationState::WaitOtherDeviceConfirmation < AuthorizationState
    attribute :link, TD::Types::String
  end
end
