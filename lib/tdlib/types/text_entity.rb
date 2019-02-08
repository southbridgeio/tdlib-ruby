module TD::Types
  # Represents a part of the text that needs to be formatted in some unusual way.
  #
  # @attr offset [Integer] Offset of the entity in UTF-16 code points.
  # @attr length [Integer] Length of the entity, in UTF-16 code points.
  # @attr type [TD::Types::TextEntityType] Type of the entity.
  class TextEntity < Base
    attribute :offset, TD::Types::Integer
    attribute :length, TD::Types::Integer
    attribute :type, TD::Types::TextEntityType
  end
end
