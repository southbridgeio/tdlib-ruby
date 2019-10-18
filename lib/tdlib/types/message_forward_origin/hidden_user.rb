module TD::Types
  # The message was originally written by a user, which is hidden by their privacy settings.
  #
  # @attr sender_name [String] Name of the sender.
  class MessageForwardOrigin::HiddenUser < MessageForwardOrigin
    attribute :sender_name, TD::Types::String
  end
end
