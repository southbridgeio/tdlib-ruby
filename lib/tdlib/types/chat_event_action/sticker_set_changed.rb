module TD::Types
  # The supergroup sticker set was changed.
  #
  # @attr old_sticker_set_id [Integer] Previous identifier of the chat sticker set; 0 if none.
  # @attr new_sticker_set_id [Integer] New identifier of the chat sticker set; 0 if none.
  class ChatEventAction::StickerSetChanged < ChatEventAction
    attribute :old_sticker_set_id, TD::Types::Integer
    attribute :new_sticker_set_id, TD::Types::Integer
  end
end
