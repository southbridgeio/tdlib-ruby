module TD::Types
  # Represents a user.
  #
  # @attr id [Integer] User identifier.
  # @attr first_name [String] First name of the user.
  # @attr last_name [String] Last name of the user.
  # @attr username [String] Username of the user.
  # @attr phone_number [String] Phone number of the user.
  # @attr status [TD::Types::UserStatus] Current online status of the user.
  # @attr profile_photo [TD::Types::ProfilePhoto] Profile photo of the user; may be null.
  # @attr outgoing_link [TD::Types::LinkState] Relationship from the current user to the other user.
  # @attr incoming_link [TD::Types::LinkState] Relationship from the other user to the current user.
  # @attr is_verified [Boolean] True, if the user is verified.
  # @attr restriction_reason [String] If non-empty, it contains the reason why access to this user must be restricted.
  #   The format of the string is "{type}: {description}".
  #   {type} contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or
  #   "-wp", which describe the platforms on which access should be restricted.
  #   (For example, "terms-ios-android".
  #   {description} contains a human-readable description of the restriction, which can be shown to the user).
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
    attribute :outgoing_link, TD::Types::LinkState
    attribute :incoming_link, TD::Types::LinkState
    attribute :is_verified, TD::Types::Bool
    attribute :restriction_reason, TD::Types::String
    attribute :have_access, TD::Types::Bool
    attribute :type, TD::Types::UserType
    attribute :language_code, TD::Types::String
  end
end
