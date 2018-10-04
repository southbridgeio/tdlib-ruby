module TD::Types
  # A message with a user contact.
  #
  # @attr contact [TD::Types::Contact] Message content.
  class MessageContent::Contact < MessageContent
    attribute :contact, TD::Types::Contact
  end
end
