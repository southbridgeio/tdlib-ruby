module TD::Types
  # A URL linking to a public supergroup or channel.
  #
  # @attr supergroup_id [Integer] Identifier of the supergroup or channel.
  class TMeUrlType::Supergroup < TMeUrlType
    attribute :supergroup_id, TD::Types::Integer
  end
end
