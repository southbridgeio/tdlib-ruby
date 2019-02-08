module TD::Types
  # The view count of the message has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr views [Integer] New value of the view count.
  class Update::MessageViews < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :views, TD::Types::Integer
  end
end
