module TD::Types
  # A message with a poll.
  # Polls can't be sent to private or secret chats.
  #
  # @attr question [String] Poll question, 1-255 characters.
  # @attr options [Array<String>] List of poll answer options, 2-10 strings 1-100 characters each.
  class InputMessageContent::Poll < InputMessageContent
    attribute :question, TD::Types::String
    attribute :options, TD::Types::Array.of(TD::Types::String)
  end
end
