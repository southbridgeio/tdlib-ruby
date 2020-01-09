module TD::Types
  # Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl.
  class LoginUrlInfo < Base
    %w[
      open
      request_confirmation
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/login_url_info/#{type}"
    end
  end
end
