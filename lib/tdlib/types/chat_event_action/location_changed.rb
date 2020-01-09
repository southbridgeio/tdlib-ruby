module TD::Types
  # The supergroup location was changed.
  #
  # @attr old_location [TD::Types::ChatLocation, nil] Previous location; may be null.
  # @attr new_location [TD::Types::ChatLocation, nil] New location; may be null.
  class ChatEventAction::LocationChanged < ChatEventAction
    attribute :old_location, TD::Types::ChatLocation.optional.default(nil)
    attribute :new_location, TD::Types::ChatLocation.optional.default(nil)
  end
end
