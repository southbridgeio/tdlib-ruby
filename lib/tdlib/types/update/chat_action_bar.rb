module TD::Types
  # The chat action bar was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr action_bar [TD::Types::ChatActionBar, nil] The new value of the action bar; may be null.
  class Update::ChatActionBar < Update
    attribute :chat_id, TD::Types::Integer
    attribute :action_bar, TD::Types::ChatActionBar.optional.default(nil)
  end
end
