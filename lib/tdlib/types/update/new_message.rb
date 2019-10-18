module TD::Types
  # A new message was received; can also be an outgoing message.
  #
  # @attr message [TD::Types::Message] The new message.
  class Update::NewMessage < Update
    attribute :message, TD::Types::Message
  end
end
