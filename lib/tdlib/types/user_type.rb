module TD::Types
  # Represents the type of the user.
  # The following types are possible: regular users, deleted users and bots.
  class UserType < Base
    %w[
      regular
      deleted
      bot
      unknown
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/user_type/#{type}"
    end
  end
end
