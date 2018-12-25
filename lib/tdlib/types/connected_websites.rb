module TD::Types
  # Contains a list of websites the current user is logged in with Telegram.
  #
  # @attr websites [Array<TD::Types::ConnectedWebsite>] List of connected websites.
  class ConnectedWebsites < Base
    attribute :websites, TD::Types::Array.of(TD::Types::ConnectedWebsite)
  end
end
