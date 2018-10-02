module TD::Types
  # Text that must be formatted as if inside pre, and code HTML tags.
  #
  # @attr language [String] Programming language of the code; as defined by the sender.
  class TextEntityType::PreCode < TextEntityType
    attribute :language, TD::Types::String
  end
end
