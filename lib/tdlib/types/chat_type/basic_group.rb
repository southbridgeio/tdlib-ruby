module TD::Types
  # A basic group (i.e., a chat with 0-200 other users).
  #
  # @attr basic_group_id [Integer] Basic group identifier.
  class ChatType::BasicGroup < ChatType
    attribute :basic_group_id, TD::Types::Integer
  end
end
