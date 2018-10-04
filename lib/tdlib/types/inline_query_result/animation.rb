module TD::Types
  # Represents an animation file.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr animation [TD::Types::Animation] Animation file.
  # @attr title [String] Animation title.
  class InlineQueryResult::Animation < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :animation, TD::Types::Animation
    attribute :title, TD::Types::String
  end
end
