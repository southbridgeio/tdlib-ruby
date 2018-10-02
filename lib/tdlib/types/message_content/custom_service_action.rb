module TD::Types
  # A non-standard action has happened in the chat.
  #
  # @attr text [String] Message text to be shown in the chat.
  class MessageContent::CustomServiceAction < MessageContent
    attribute :text, TD::Types::String
  end
end
