module TD::Types
  # The chat photo was changed.
  #
  # @attr old_photo [ChatPhoto] Previous chat photo value; may be null.
  # @attr new_photo [ChatPhoto] New chat photo value; may be null.
  class ChatEventAction::PhotoChanged < ChatEventAction
    attribute :old_photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :new_photo, TD::Types::ChatPhoto.optional.default(nil)
  end
end
