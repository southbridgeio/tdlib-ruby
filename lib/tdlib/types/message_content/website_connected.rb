module TD::Types
  # The current user has connected a website by logging in using Telegram Login Widget on it.
  #
  # @attr domain_name [String] Domain name of the connected website.
  class MessageContent::WebsiteConnected < MessageContent
    attribute :domain_name, TD::Types::String
  end
end
