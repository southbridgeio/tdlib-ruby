module TD::Types
  # Describes the type of a URL linking to an internal Telegram entity.
  class TMeUrlType < Base
    %w[
      user
      supergroup
      chat_invite
      sticker_set
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/t_me_url_type/#{type}"
    end
  end
end
