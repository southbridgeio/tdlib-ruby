module TD::Types
  # Contains a list of chat members.
  #
  # @attr total_count [Integer] Approximate total count of chat members found.
  # @attr members [Array<TD::Types::ChatMember>] A list of chat members.
  class ChatMembers < Base
    attribute :total_count, TD::Types::Integer
    attribute :members, TD::Types::Array.of(TD::Types::ChatMember)
  end
end
