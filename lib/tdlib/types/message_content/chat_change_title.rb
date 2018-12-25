module TD::Types
  # An updated chat title.
  #
  # @attr title [String] New chat title.
  class MessageContent::ChatChangeTitle < MessageContent
    attribute :title, TD::Types::String
  end
end
