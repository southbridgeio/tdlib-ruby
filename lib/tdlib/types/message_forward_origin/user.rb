module TD::Types
  # The message was originally written by a known user.
  #
  # @attr sender_user_id [Integer] Identifier of the user that originally sent the message.
  class MessageForwardOrigin::User < MessageForwardOrigin
    attribute :sender_user_id, TD::Types::Integer
  end
end
