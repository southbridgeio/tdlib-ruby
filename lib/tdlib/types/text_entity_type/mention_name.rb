module TD::Types
  # A text shows instead of a raw mention of the user (e.g., when the user has no username).
  #
  # @attr user_id [Integer] Identifier of the mentioned user.
  class TextEntityType::MentionName < TextEntityType
    attribute :user_id, TD::Types::Integer
  end
end
