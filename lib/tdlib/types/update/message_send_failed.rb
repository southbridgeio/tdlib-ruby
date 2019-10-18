module TD::Types
  # A message failed to send.
  # Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be
  #   received instead of this update.
  #
  # @attr message [TD::Types::Message] Contains information about the message which failed to send.
  # @attr old_message_id [Integer] The previous temporary message identifier.
  # @attr error_code [Integer] An error code.
  # @attr error_message [String] Error message.
  class Update::MessageSendFailed < Update
    attribute :message, TD::Types::Message
    attribute :old_message_id, TD::Types::Integer
    attribute :error_code, TD::Types::Integer
    attribute :error_message, TD::Types::String
  end
end
