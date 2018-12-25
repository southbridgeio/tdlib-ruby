module TD::Types
  # The list of saved animations was updated.
  #
  # @attr animation_ids [Array<Integer>] The new list of file identifiers of saved animations.
  class Update::SavedAnimations < Update
    attribute :animation_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
