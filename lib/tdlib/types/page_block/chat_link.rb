module TD::Types
  # A link to a chat.
  #
  # @attr title [String] Chat title.
  # @attr photo [TD::Types::ChatPhoto] Chat photo; may be null.
  # @attr username [String] Chat username, by which all other information about the chat should be resolved.
  class PageBlock::ChatLink < PageBlock
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :username, TD::Types::String
  end
end
