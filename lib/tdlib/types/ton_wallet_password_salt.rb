module TD::Types
  # Contains the salt to be used with locally stored password to access a local TON-based wallet.
  #
  # @attr salt [String] The salt.
  class TonWalletPasswordSalt < Base
    attribute :salt, TD::Types::String
  end
end
