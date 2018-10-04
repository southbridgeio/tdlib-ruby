module TD::Types
  # A rich text email link.
  #
  # @attr text [TD::Types::RichText] Text.
  # @attr email_address [String] Email address.
  class RichText::EmailAddress < RichText
    attribute :text, TD::Types::RichText
    attribute :email_address, TD::Types::String
  end
end
