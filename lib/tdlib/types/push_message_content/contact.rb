module TD::Types
  # A message with a user contact.
  #
  # @attr name [String] Contact's name.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Contact < PushMessageContent
    attribute :name, TD::Types::String
    attribute :is_pinned, TD::Types::Bool
  end
end
