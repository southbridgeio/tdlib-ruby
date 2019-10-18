module TD::Types
  # Contains information about a link to a message in a chat.
  #
  # @attr is_public [Boolean] True, if the link is a public link for a message in a chat.
  # @attr chat_id [Integer] If found, identifier of the chat to which the message belongs, 0 otherwise.
  # @attr message [TD::Types::Message, nil] If found, the linked message; may be null.
  # @attr for_album [Boolean] True, if the whole media album to which the message belongs is linked.
  class MessageLinkInfo < Base
    attribute :is_public, TD::Types::Bool
    attribute :chat_id, TD::Types::Integer
    attribute :message, TD::Types::Message.optional.default(nil)
    attribute :for_album, TD::Types::Bool
  end
end
