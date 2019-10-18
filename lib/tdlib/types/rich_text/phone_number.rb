module TD::Types
  # A rich text phone number.
  #
  # @attr text [TD::Types::RichText] Text.
  # @attr phone_number [String] Phone number.
  class RichText::PhoneNumber < RichText
    attribute :text, TD::Types::RichText
    attribute :phone_number, TD::Types::String
  end
end
