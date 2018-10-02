module TD::Types
  # A newly created supergroup or channel.
  #
  # @attr title [String] Title of the supergroup or channel.
  class MessageContent::SupergroupChatCreate < MessageContent
    attribute :title, TD::Types::String
  end
end
