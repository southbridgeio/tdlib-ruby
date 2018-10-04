module TD::Types
  # A chat photo was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr photo [TD::Types::ChatPhoto] The new chat photo; may be null.
  class Update::ChatPhoto < Update
    attribute :chat_id, TD::Types::Integer
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
  end
end
