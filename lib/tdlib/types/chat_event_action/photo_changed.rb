module TD::Types
  # The chat photo was changed.
  #
  # @attr old_photo [TD::Types::Photo, nil] Previous chat photo value; may be null.
  # @attr new_photo [TD::Types::Photo, nil] New chat photo value; may be null.
  class ChatEventAction::PhotoChanged < ChatEventAction
    attribute :old_photo, TD::Types::Photo.optional.default(nil)
    attribute :new_photo, TD::Types::Photo.optional.default(nil)
  end
end
