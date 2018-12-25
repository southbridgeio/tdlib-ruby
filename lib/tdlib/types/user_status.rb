module TD::Types
  # Describes the last time the user was online.
  class UserStatus < Base
    %w[
      empty
      online
      offline
      recently
      last_week
      last_month
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/user_status/#{type}"
    end
  end
end
