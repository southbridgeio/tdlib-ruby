module TD::Types
  # A message containing a user contact.
  #
  # @attr contact [TD::Types::Contact] Contact to send.
  class InputMessageContent::Contact < InputMessageContent
    attribute :contact, TD::Types::Contact
  end
end
