module TD::Types
  # The chat title was changed.
  #
  # @attr old_title [String] Previous chat title.
  # @attr new_title [String] New chat title.
  class ChatEventAction::TitleChanged < ChatEventAction
    attribute :old_title, TD::Types::String
    attribute :new_title, TD::Types::String
  end
end
