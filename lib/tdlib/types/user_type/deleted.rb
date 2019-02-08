module TD::Types
  # A deleted user or deleted bot.
  # No information on the user besides the user_id is available.
  # It is not possible to perform any active actions on this type of user.
  class UserType::Deleted < UserType
  end
end
