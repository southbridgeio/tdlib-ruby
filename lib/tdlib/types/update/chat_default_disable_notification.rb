module TD::Types
  # The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr default_disable_notification [Boolean] The new default_disable_notification value.
  class Update::ChatDefaultDisableNotification < Update
    attribute :chat_id, TD::Types::Integer
    attribute :default_disable_notification, TD::Types::Bool
  end
end
