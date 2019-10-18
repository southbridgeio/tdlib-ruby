module TD::Types
  # The selected background has changed.
  #
  # @attr for_dark_theme [Boolean] True, if background for dark theme has changed.
  # @attr background [TD::Types::Background, nil] The new selected background; may be null.
  class Update::SelectedBackground < Update
    attribute :for_dark_theme, TD::Types::Bool
    attribute :background, TD::Types::Background.optional.default(nil)
  end
end
