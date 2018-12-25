module TD::Types
  # Describes a user contact.
  #
  # @attr phone_number [String] Phone number of the user.
  # @attr first_name [String] First name of the user; 1-255 characters in length.
  # @attr last_name [String] Last name of the user.
  # @attr vcard [String] Additional data about the user in a form of vCard; 0-2048 bytes in length.
  # @attr user_id [Integer] Identifier of the user, if known; otherwise 0.
  class Contact < Base
    attribute :phone_number, TD::Types::String
    attribute :first_name, TD::Types::String
    attribute :last_name, TD::Types::String
    attribute :vcard, TD::Types::String
    attribute :user_id, TD::Types::Integer
  end
end
