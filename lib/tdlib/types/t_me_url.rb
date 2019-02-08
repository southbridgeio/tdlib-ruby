module TD::Types
  # Represents a URL linking to an internal Telegram entity.
  #
  # @attr url [String] URL.
  # @attr type [TD::Types::TMeUrlType] Type of the URL.
  class TMeUrl < Base
    attribute :url, TD::Types::String
    attribute :type, TD::Types::TMeUrlType
  end
end
