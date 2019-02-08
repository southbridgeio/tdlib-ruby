module TD::Types
  # A chat member was deleted.
  #
  # @attr user_id [Integer] User identifier of the deleted chat member.
  class MessageContent::ChatDeleteMember < MessageContent
    attribute :user_id, TD::Types::Integer
  end
end
