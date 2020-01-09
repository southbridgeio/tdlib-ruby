module TD::Types
  # Describes a chat background.
  #
  # @attr id [Integer] Unique background identifier.
  # @attr is_default [Boolean] True, if this is one of default backgrounds.
  # @attr is_dark [Boolean] True, if the background is dark and is recommended to be used with dark theme.
  # @attr name [String] Unique background name.
  # @attr document [TD::Types::Document, nil] Document with the background; may be null.
  #   Null only for filled backgrounds.
  # @attr type [TD::Types::BackgroundType] Type of the background.
  class Background < Base
    attribute :id, TD::Types::Integer
    attribute :is_default, TD::Types::Bool
    attribute :is_dark, TD::Types::Bool
    attribute :name, TD::Types::String
    attribute :document, TD::Types::Document.optional.default(nil)
    attribute :type, TD::Types::BackgroundType
  end
end
