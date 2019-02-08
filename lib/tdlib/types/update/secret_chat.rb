module TD::Types
  # Some data of a secret chat has changed.
  # This update is guaranteed to come before the secret chat identifier is returned to the client.
  #
  # @attr secret_chat [TD::Types::SecretChat] New data about the secret chat.
  class Update::SecretChat < Update
    attribute :secret_chat, TD::Types::SecretChat
  end
end
