module TD::Types
  # Represents a user.
  #
  # @attr id [Integer] User identifier.
  # @attr first_name [String] First name of the user.
  # @attr last_name [String] Last name of the user.
  # @attr username [String] Username of the user.
  # @attr phone_number [String] Phone number of the user.
  # @attr status [TD::Types::UserStatus] Current online status of the user.
  # @attr profile_photo [TD::Types::ProfilePhoto, nil] Profile photo of the user; may be null.
  # @attr is_contact [Boolean] The user is a contact of the current user.
  # @attr is_mutual_contact [Boolean] The user is a contact of the current user and the current user is a contact of
  #   the user.
  # @attr is_verified [Boolean] True, if the user is verified.
  # @attr is_support [Boolean] True, if the user is Telegram support account.
  # @attr restriction_reason [String] If non-empty, it contains a human-readable description of the reason why access
  #   to this user must be restricted.
  # @attr is_scam [Boolean] True, if many users reported this user as a scam.
  # @attr have_access [Boolean] If false, the user is inaccessible, and the only information known about the user is
  #   inside this class.
  #   It can't be passed to any method except GetUser.
  # @attr type [TD::Types::UserType] Type of the user.
  # @attr language_code [String] IETF language tag of the user's language; only available to bots.
  class User < Base
    attribute :id, TD::Types::Integer
    attribute :first_name, TD::Types::String
    attribute :last_name, TD::Types::String
    attribute :username, TD::Types::String
    attribute :phone_number, TD::Types::String
    attribute :status, TD::Types::UserStatus
    attribute :profile_photo, TD::Types::ProfilePhoto.optional.default(nil)
    attribute :is_contact, TD::Types::Bool
    attribute :is_mutual_contact, TD::Types::Bool
    attribute :is_verified, TD::Types::Bool
    attribute :is_support, TD::Types::Bool
    attribute :restriction_reason, TD::Types::String
    attribute :is_scam, TD::Types::Bool
    attribute :have_access, TD::Types::Bool
    attribute :type, TD::Types::UserType
    attribute :language_code, TD::Types::String
  end
end
