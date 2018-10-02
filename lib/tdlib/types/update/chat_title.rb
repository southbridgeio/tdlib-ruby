module TD::Types
  # The title of a chat was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr title [String] The new chat title.
  class Update::ChatTitle < Update
    attribute :chat_id, TD::Types::Integer
    attribute :title, TD::Types::String
  end
end
